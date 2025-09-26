#import "page.typ": page
#import "text.typ": text
#import "paragraph.typ": paragraph
#import "heading.typ": heading
#import "list.typ": list
#import "image.typ": image
#import "table.typ": table
#import "figure.typ": figure, attachment
#import "math.typ": math
#import "outline.typ": outline
#import "reference.typ": reference
#import "bibliography.typ": bibliography

#let index(body) = {
  show: page
  show: text
  show: paragraph
  show: heading
  show: list
  show: image
  show: table
  show: figure
  show: math
  show: outline
  show: reference
  show: bibliography

  show "-": "–"

  body
}