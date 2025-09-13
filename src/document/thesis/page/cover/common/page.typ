#import "../../../../../utility/index.typ" as utility

#let page(
  university,
  faculty,
  department,
  student,
  name,
  type,
  study,
  specialization,
  field,
  dateline,
  content
) = {
  layout(size => {
    let (width, height) = size

    utility.text.clip(
      university,
      (content) => par(text(upper(content), size: 14pt), leading: 1.166em, spacing: 1.166em),
      width
    )

    utility.text.clip(
      faculty,
      (content) => par(text(upper(content))),
      width
    )

    utility.text.clip(
      department,
      (content) => par(text(upper(content))),
      width
    )

    v(0.375fr)

    utility.text.clip(
      student,
      (content) => par(text(content)),
      width
    )
    par("")

    utility.text.clip(
      name.lithuanian,
      (content) => par(text(upper(content), size: 14pt, weight: "bold")),
      width
    )

    utility.text.clip(
      name.english,
      (content) => par(text(upper(content), size: 14pt, weight: "bold")),
      width
    )

    par("")

    utility.text.clip(
      type,
      (content) => par(text(content, size: 14pt)),
      width
    )

    par("")

    utility.text.clip(
      study,
      (content) => par(text(content)),
      width
    )
    utility.text.clip(
      specialization,
      (content) => par(text(content)),
      width
    )
    utility.text.clip(
      field,
      (content) => par(text(content)),
      width
    )

    v(0.25fr)
    content
    v(1fr)

    utility.text.clip(
      dateline,
      (content) => par(text(content)),
      width
    )
  })

  pagebreak()
}