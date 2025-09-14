#import "../common/index.typ" as common
#import "page/index.typ" as page

#let document(content, ..rest) = {
  show: common.document

  let arguments = rest.named()
  let cover = arguments.at("cover")

  page.cover.primary(..cover.at("primary"))
  page.cover.secondary(..cover.at("secondary"))

  content
}