#let _table(body) = {
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
  
  body
}