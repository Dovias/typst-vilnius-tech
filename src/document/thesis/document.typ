#import "../common/index.typ": document as common
#import "page/index.typ" as page

#let document(
    content,
    university: "Vilniaus Gedimino Technikos Universitetas",
    faculty: "_______________________________ Fakultetas",
    department: "______________________________________ Katedra",
    student: "Studento vardas, pavardė",
    name: (
      lithuanian: "Baigiamojo darbo (projekto) pavadinimas",
      english: "Thesis (project) name"
    ),
    type: "Baigiamasis bakalauro darbas (projektas)",
    study: "______________ studijų programa, valstybinis kodas _____________",
    field: "________________ specializacija",
    specialization: "_________________ studijų kryptis",
    dateline: "Vilnius, " + str(datetime.today().year())
) = {
  show: common

  page.cover.primary(
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

  content
}