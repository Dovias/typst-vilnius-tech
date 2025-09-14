#import "../common/index.typ" as common

#let page(
  ..rest
) = {
  let arguments = rest.named()
  let contributors = arguments.at("contributors")

  show: common.page.with(..rest)

  set align(right)
  block(
    context {
      let style(role) = {
        text(role, weight: "bold")
      }

      let max_width = contributors.map(contributor => measure(style(contributor.role)).width).reduce(calc.max)
      layout(size => {
        let previous = ""
        for contributor in contributors {
          let (role, field) = contributor
          let width = measure(style(role)).width

          let input(value) = {
            return box(box({
              set align(center)
              value
            }, width: size.width - max_width))
          }

          block(
            {
              set par(spacing: 0.6em)

              let spacer = 0.666em
              let (value, caption) = field

              par(style(role) + h(spacer) + box(
                input(value),
                width: size.width - width - spacer,
                stroke: (bottom: 0.6pt), outset: (bottom: 2pt))
              )
              par(input(text(caption, size: 8pt)), spacing: 0em)
            },

            // Add a bit more spacing if roles are not grouped:
            above: if (previous == role) { 1em } else { 1.444em }
          )

          previous = contributor.role
        }
      })
    },
    width: 10.666cm
  )

}