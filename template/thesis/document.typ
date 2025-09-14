#import "@preview/vilnius-tech:0.1.0" as vilniustech

#let cover = (
  university: "Vilniaus Gedimino technikos universitetas",
  faculty: "Fundamentinių mokslų fakultetas",
  department: "Informacinių sistemų katedra",
  author: "Dovidas Zablockis",
  titles: (
    "Baigiamojo darbo (projekto) pavadinimas",
    "Thesis work (project) title"
  ),
  type: "Bakalauro baigiamasis darbas",
  study: "Programų inžinerijos studijų programa, valstybinis kodas, 6121BX023",
  specialization: "Verslo valdymo sistemų specializacija",
  field: "Programų sistemų studijų kryptis",
  contributors: (
    (role: "Vadovas", field: (caption: "(Pedag. vardas, vardas, pavardė)", value: "")),
    (role: "Konsultantas", field: (caption: "(Pedag. vardas, vardas, pavardė)", value: "")),
    (role: "Konsultantas", field: (caption: "(Pedag. vardas, vardas, pavardė)", value: ""))
  ),
  dateline: "Vilnius, 2025"
)

#vilniustech.document.thesis.
#show: vilniustech.document.thesis.with(
  cover: (
    primary: cover,
    secondary: cover
  )
)