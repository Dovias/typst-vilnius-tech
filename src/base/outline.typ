#import "heading.typ" as heading
#import "figure.typ": attachment

#let outline(body) = {
  set std.outline(title: none, indent: (level) => level * 1em)
  set std.outline.entry(fill: repeat([․], gap: 0.025em))

  show std.outline: outline => {
    // Heading outline has smaller spacing than other outlines. Why? dont ask me :)
    show: heading.supplemental.with(spacing: if (outline.target == selector(std.heading)) {2em})
    
    [#pagebreak() #outline #pagebreak()]
  }

  // Provide default titles for various outline targets:
  show std.outline.where(target: selector(std.heading)): set std.outline(title: [Turinys])
  show std.outline.where(target: selector(figure.where(kind: image))): set std.outline(title: [Paveikslų sąrašas])
  show std.outline.where(target: selector(figure.where(kind: table))): set std.outline(title: [Lentelių sąrašas])
  show std.outline.where(target: selector(figure.where(kind: attachment))): set std.outline(title: [Priedai])

  show std.outline.entry: it => {
    let prefix
    let body = it.body()
    
    let element = it.element
    let location = element.location()
    let numbering = element.numbering
    let spacing = 0.468em
    // Different outline types have differing spacing:
    if (element.func() == std.heading) {
      if (it.level == 1) {
        body = [#upper(body) ]
        spacing = 0.9375em
      }

      if (numbering != none) {
        prefix = [#std.numbering(numbering, ..counter(std.heading).at(location)) ]
      }
    } else {
      body = [#body ]
      spacing = 1.0625em
      
      if (numbering != none) {
        prefix = [#std.numbering(numbering, ..element.counter.at(location)) ]
      }
    }

    set block(spacing: spacing)
    // We don't use outline.entry.inner() here because it adds spacing between title and filling automatically,
    // which we dont want to have for 2+ level entries for some reason:
    link(location, it.indented(prefix, [#body#box(width: 1fr, it.fill) #it.page()], gap: 0em))

  }

  show std.outline.entry.where(level: 3): set text(style: "italic")

  body
}