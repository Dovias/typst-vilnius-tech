#import "../../../../../utility/index.typ" as utility
#import "../common/index.typ" as common

#let page(
  university,
  faculty,
  department,
  student,
  name,
  type,
  study,
  specialization,
  field,
  dateline
) = {
  set align(center)

  image("asset/branding.svg", height: 1.4cm)
  par("")

  show: common.page.with(
    university,
    faculty,
    department,
    student,
    name,
    type,
    study,
    specialization,
    field,
    dateline
  )
}