#import "typography/index.typ" as typography

#let body(content) = {
  show: typography.font
  show: typography.paragraph

  set page(
    margin: (
      top: 2cm,
      right: 1cm,
      bottom: 2cm,
      left: 3cm
    )
  )

  content
}