#import "base.typ": base
#import "outlines.typ": outlines
#import "attachments.typ": attachments

#let document(body, ..rest) = {
  let options = rest.named()
  
  show: base
  show: outlines.with(..options.at("outlines", default: ()))
  show: attachments.with(..options.at("attachments", default: ()))
  
  body
}