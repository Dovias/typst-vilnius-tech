#import "../common/index.typ" as common

#let page(..rest) = {
  set align(center)

  image("asset/branding.svg", height: 1.4cm)
  par("")

  show: common.page.with(..rest)
}