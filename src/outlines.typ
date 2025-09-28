#import "base/figure.typ": attachment
#import "utility/dictionary.typ": enabled, extract
#import "utility/predicate.typ": boolean, text

#let outline(target, ..rest) = {
  let options = rest.named()
  if enabled(from: options) == true {
    std.outline(target: target, ..extract("title", from: options, predicate: text))
  }
}

#let outlines(body, ..rest) = {
  let options = rest.named()
  if enabled(from: options) == true {
    outline(heading, ..options.at("heading", default: ()))
    outline(figure.where(kind: table), ..options.at("table", default: ()))
    outline(figure.where(kind: image), ..options.at("image", default: ()))
    outline(figure.where(kind: attachment), ..options.at("attachment", default: ()))
  }

  body
}