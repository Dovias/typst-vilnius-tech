#let paragraph(body) = {
  set par(
    leading: 1em,
    spacing: 1em,
    first-line-indent: (
      amount: 3em,
      all: true
    )
  )

  show par: it => {
    if (it.justify == true) {
      return it
    }
    
    [#par(it.body, justify: true) <paragraph>]
  }
  
  body
}