#let _base(body) = {
  show "-": "–"
  let first_line_indent = 3em
  let list_indent = first_line_indent * 1.6

  set text(
    font: "Times New Roman",
    size: 12pt,
    lang: "lt",
    region: "LT"
  )

  set par(
    leading: 1em,
    spacing: 1em,
    first-line-indent: (
      amount: first_line_indent,
      all: true
    )
  )

  show par: it => {
    if (it.justify == true) {
      return it
    }
    
    [#par(it.body, justify: true) <paragraph>]
 
  }

  set page(
    margin: (
      top: 2cm,
      right: 2cm,
      bottom: 2cm,
      left: 3cm
    ),
    numbering: "1"
  )

  set heading(numbering: (..rest) => {
    let numbers = rest.pos()
    if (numbers.len() > 1) {
      numbers = numbers.slice(2)
    }
    numbering("1.", ..numbers)
  }, outlined: false)

  show heading: it => {
    if (it.numbering == none) {
      return it
    }

    if (it.body == []) {
      return pagebreak()
    }
    
    let level = it.level
    if (level == 1) {
      set align(center)
      set text(size: 0.8em)

      block(upper(it.body), spacing: 2.5em)
    } else if (level == 2) {
      let (body, ..arguments) = it.fields()

      set text(size: 0.7em)
      block(heading(upper(body), ..arguments, numbering: none, level: 1, outlined: true), spacing: 2.75em)
    } else if (level == 3) {
      let (body, ..arguments) = it.fields()
      
      set text(size: 0.85em)
      block(heading(counter(heading).display() + " " + upper(it.body), ..arguments, numbering: none, level: 1, outlined: true), spacing: 2.75em)
    } else if (level == 4) {
      let (body, ..arguments) = it.fields()
      
      set text(size: 1em)
      block(heading(counter(heading).display() + " " + it.body, ..arguments, numbering: none, level: 2, outlined: true), spacing: 2.4em)
    } else if (level >= 5) {
      let (body, ..arguments) = it.fields()
      
      set text(size: 1.083em)
      block(heading(text(counter(heading).display() + " " + it.body, style: "italic", weight: "regular"), ..arguments, numbering: none, level: 3, outlined: true), spacing: 1.666em)
    }
  }
  

  // Very big hack of enum numbering function to support list indentation after paragraphs or consecutive lists:
  // Ugly? Yes. Still better than MS Word's list indentation though :D
  set enum(
    full: true,
    numbering: (..rest) => {
      let numbers = rest.pos()
      let last = numbers.last()

      let prefix = if (last == 0) {
        last += 1
        "-"
      } else {
        numbers = numbers.map(number => if number == 0 { 1 } else { number })
        numbering("1.", ..numbers)
      }

      context {
        let here = here()
        let previous_paragraphs = query(selector(<paragraph>).before(here, inclusive: false))
        if (numbers.len() == 1 and last == 1 and previous_paragraphs.len() > 0) {
          layout(size => {
            let current_position = here.position()

            let last_paragraph = previous_paragraphs.last()

            let last_paragraph_position = last_paragraph.location().position()
            let last_paragraph_position_y_end = last_paragraph_position.y + measure(block(last_paragraph, width: size.width)).height + 1em.to-absolute()

            return if (
              current_position.page == last_paragraph_position.page and
              current_position.y    == last_paragraph_position_y_end
            ) { 
              pad(prefix, left: list_indent)
            } else {
              prefix
            }
          })
        } else {
          prefix
        }
      }
    }
  )

  show list: it => {
    // Simulate lists under enums because list
    // marker function is lacking information for
    // hierarchical indentation support:
    for child in it.children {
      enum.item(0, child.body)
    }
  }

  set outline(
    title: none,
  )

  set outline.entry(
    fill: repeat(".", gap: 0em)
  )


  set table(
    align: horizon + center,
    inset: (
      x: 0.6em,
      y: 0.55em
    ),
    stroke: 0.25pt)

  show table: it => {
    set text(size: 0.833em)
    set par(leading: 0.5em, spacing: 0.5em, justify: true)

    it
  }

  set figure(supplement: none, outlined: false)

  set figure.caption(separator: "")
  show figure.caption: it => {
    set text(size: 0.916em)

    it
  }

  show figure.where(kind: table): it => {
    if (it.body == []) {
      return
    }
    if (it.supplement != none) {
      return it
    }

    set figure.caption(position: top)
    show figure.caption: it => {
      set align(left)

      it
    }

    let (body, counter, ..arguments) = it.fields()
    let label = arguments.remove("label", default: none)
    let prefix = str(counter.get().last()) + " lentelė."
    let numbering = (..rest) => ""

    // Since there's no clean way to append prefix in different order, we need to create one dummy
    // unformatted figure for outlining and one non-outlined one for stylized display:
    figure(
      [],
      ..arguments,
      outlined: true,
      numbering: numbering,
      supplement: (content) => prefix + h(-0.33em)
    )

    set block(spacing: 0.5em)
    figure(
      body,
      ..arguments,
      gap: 0.5em,
      numbering: numbering,
      supplement: (content) => text(h(0.15em) + prefix, weight: "bold")
    )
  }

  show figure.where(kind: image): it => {
    if (it.body == []) {
      return
    }
    if (it.supplement != none) {
      return it
    }

    let (body, counter, ..arguments) = it.fields()
    let label = arguments.remove("label", default: none)
    let prefix = str(counter.get().last()) + " pav."
    let numbering = (..rest) => ""

    // Since there's no clean way to append prefix in different order, we need to create one dummy
    // unformatted figure for outlining and one non-outlined one for stylized display:
    figure(
      [],
      ..arguments,
      outlined: true,
      numbering: numbering,
      supplement: (content) => prefix + h(-0.33em)
    )

    set block(spacing: 0.5em)
    figure(
      body,
      ..arguments,
      gap: 0.833em,
      numbering: numbering,
      supplement: (content) => text(h(0.15em) + prefix, weight: "bold")
    )
  }

  body
}