#import "base/page.typ": page
#import "base/pagebreak.typ": pagebreak
#import "base/text.typ": text
#import "base/paragraph.typ": paragraph
#import "base/heading.typ": content as heading
#import "base/list.typ": list
#import "base/image.typ": image
#import "base/table.typ": table
#import "base/figure.typ": figure
#import "base/math.typ": math
#import "base/outline.typ": outline
#import "base/reference.typ": reference
#import "base/bibliography.typ": bibliography

#let base(body) = {
  show: page
  show: pagebreak
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