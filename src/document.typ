#import "base.typ": base
#import "outlines.typ": outlines

#let document(body, ..rest) = {
  let options = rest.named()
  
  show: base
  show: outlines.with(..options.at("outline", default: ()))
  
  body
}