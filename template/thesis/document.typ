#import "@preview/vilnius-tech:0.1.0" as vilniustech

#let cover = (
  university: "Vilniaus Gedimino technikos universitetas",
  faculty: "____________________ fakultetas",
  department: "____________________ katedra",
  author: "Studento vardas, pavardė",
  titles: (
    "Baigiamojo darbo (projekto) pavadinimas",
    "Thesis work (project) title"
  ),
  type: "Baigiamasis (bakalauro/magistro) darbas (projektas)",
  study: "____________________ studijų programa, valstybinis kodas, _________",
  specialization: "Verslo valdymo sistemų specializacija",
  field: "________________ studijų kryptis",
  contributors: (
    (role: "Vadovas", field: (caption: "(Pedag. vardas, vardas, pavardė)")),
    (role: "Konsultantas", field: (caption: "(Pedag. vardas, vardas, pavardė)")),
    (role: "Konsultantas", field: (caption: "(Pedag. vardas, vardas, pavardė)"))
  ),
  dateline: "Vilnius, 2025"
)

#show: vilniustech.document.body

#vilniustech.document.content.thesis.cover.primary(..cover)
#pagebreak()
#vilniustech.document.content.thesis.cover.secondary(..cover)

/* TODO: Implement:
= Turinys
#vilniustech.document.content.table_of_contents()
#pagebreak()

= Paveikslų sąrašas
#vilniustech.document.content.list_of_figures()
#pagebreak()

= Lentelių sąrašas
#vilniustech.document.content.list_of_tables()
#pagebreak()

= Priedų sąrašas
#vilniustech.document.content.list_of_attachments()
#pagebreak()

== Įvadas
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
#pagebreak()

=== Literatūros analizė
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
==== Poskyrio pavadinimas
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

===== Skyrelio pavadinimas
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

== Literatūros sąrašas
#vilniustech.document.bibliography()

= Priedai
...
*/