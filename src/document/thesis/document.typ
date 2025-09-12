#import "../common/index.typ": document as common
#import "page/index.typ" as page

#let document(
  content,
  university: "Vilniaus Gedimino Technikos Universitetas",
  faculty: "Fakulteto pavadinimas",
  department: "Katedros pavadinimas",
  author: "Studento vardas, pavardė"
) = {
  show: common

  page.cover.primary(
    university,
    faculty,
    department,
    author
  )
  content
}