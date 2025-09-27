#import "heading.typ": supplement
#import "../../utility/index.typ" as utility
#let attachment = "attachment"

#let attachments(title: none, ..rest) = {
  let children = rest.pos().filter(child => type(child) == dictionary and child.at("body", default: none) != none)
  if (children.len() > 0) [
    #pagebreak()
    
    #show: supplement
    #utility.heading.optional(title, default: [Priedai], level: 1)
    #for child in children {
      let body = child.remove("body")
      
      let arguments = utility.dictionary.extract(
        "caption",
        from: child,
        to: utility.dictionary.extract("supplement", from: child)
      )

      [#utility.label.optional(child.at("label", default: none), figure(body, kind: attachment, ..arguments)) #pagebreak()]
    }
    #pagebreak()
  ]
}