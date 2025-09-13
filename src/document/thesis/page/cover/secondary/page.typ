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
  supervisor,
  
  dateline
) = {
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

  set align(right)
}