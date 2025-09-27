#let page(body) = {
  set std.page(
    margin: (
      top: 2cm,
      right: 2cm,
      bottom: 2cm,
      left: 3cm
    ),
    numbering: "1",
    footer-descent: 18%
  )

  body
}