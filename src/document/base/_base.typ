#import "page/index.typ": page
#import "text/index.typ": text
#import "paragraph/index.typ": paragraph
#import "heading/index.typ": heading
#import "list/index.typ": list
#import "enum/index.typ": enum
#import "table/index.typ": table
#import "figure/index.typ": figure
#import "math/index.typ": math
#import "reference/index.typ": reference

#let _base(body) = {
  show: page
  show: text
  show: paragraph
  show: heading
  show: list
  show: enum
  show: table
  show: figure
  show: math
  show: reference

  show "-": "–"

  body
}