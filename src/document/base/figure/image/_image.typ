#let _image(body) = {
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