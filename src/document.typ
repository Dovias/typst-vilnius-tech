#import "base.typ": base
#import "outlines.typ": outlines
#import "attachments.typ": attachments
#import "bibliography.typ": bibliography

#import "utility/dictionary.typ": get, array

#let document(body, ..rest) = {
  let options = rest.named()
  
  show: base
  show: outlines.with(..options.at("outlines", default: ()))
  show: attachments.with(..options.at("attachments", default: ()))
  
  body

  bibliography(options.at("bibliography", default: none))
}