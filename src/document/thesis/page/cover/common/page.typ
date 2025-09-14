#let page(content, ..rest) = {
  let arguments = rest.named()

  set align(center)

  par(text(upper(arguments.at("university")), size: 14pt), leading: 1.166em, spacing: 1.166em)
  par(text(upper(arguments.at("faculty"))))
  par(text(upper(arguments.at("department"))))

  for _ in range(1, 4) {
    par("")
  }
  par(text(arguments.at("author")))
  par("")
  for title in arguments.at("titles") {
    par(text(upper(title), size: 14pt, weight: "bold"))
  }
  par("")
  par(text(arguments.at("type"), size: 14pt))
  par("")
  par(text(arguments.at("study")))
  par(text(arguments.at("specialization")))
  par(text(arguments.at("field")))

  for _ in range(1, 4) {
    par("")
  }
  content
  v(1fr)
  par(text(arguments.at("dateline")))

  pagebreak()
}