#import "image/index.typ": image
#import "table/index.typ": table

#let _figure(body) = {
  show: image
  show: table

  set figure(supplement: none, outlined: false)
  set figure.caption(separator: "")
  
  show figure.caption: it => {
    set text(size: 0.916em)

    it
  }

  body
}