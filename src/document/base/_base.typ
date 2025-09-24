#import "page/index.typ": page
#import "text/index.typ": text
#import "paragraph/index.typ": paragraph
#import "heading/index.typ": heading
#import "list/index.typ": list
#import "enum/index.typ": enum
#import "image/index.typ": image
#import "table/index.typ": table
#import "figure/index.typ": figure, attachment
#import "math/index.typ": math
#import "reference/index.typ": reference
#import "bibliography/index.typ": bibliography

#let _base(body) = {
  show: page
  show: text
  show: paragraph
  show: heading
  show: list
  show: enum
  show: image
  show: table
  show: figure
  show: math
  show: reference
  show: bibliography

  show "-": "–"

  body
}