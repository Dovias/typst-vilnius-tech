#import "base/figure.typ": attachment as type
#import "base/heading.typ": supplemental as style
#import "utility/dictionary.typ": get, extract, array
#import "utility/predicate.typ": collection, text
#import "utility/label.typ": optional as label

#let attachment(..rest) = {
  let options = rest.named()
  
  let content = options.at("content")
  let arguments = extract("caption", from: options, predicate: text,
    to: extract("source", new: "supplement", from: options, predicate: text)
  )
  
  let key = options.at("label", default: none)
  let figure = figure(content, kind: type, ..arguments)
  let label = label(key, figure)

  [#label #pagebreak()]
}

#let attachments(body, ..rest) = {
  body
  
  let options = rest.named()
  let entries = array(get("entries", from: options, default: (), predicate: collection))
    .filter(entry => std.type(entry) == dictionary and entry.at("content", default: none) != none)
    
  if (entries.len() > 0) {
    pagebreak()
    
    show: style
    heading(get("title", from: options, default: [Priedai], predicate: text), level: 1)
    for entry in entries {
      attachment(..entry)
    }
    
    pagebreak()
  }
}