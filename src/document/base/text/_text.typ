#import "../../configuration/index.typ": font

#let _text(body) = {
  set text(
    font: font.text,
    size: 12pt,
    lang: "lt",
    region: "LT"
  )

  body
}