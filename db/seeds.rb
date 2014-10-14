Job.delete_all
Job.create!([
  {id: 1 }

])


Filial.delete_all
Filial.create!([
  {name: "Филиал 1", pn: "8:30 – 18:30", vt: "8:30 – 18:30", sr: "8:30 – 18:30", ch: "8:30 – 18:30", pt: "8:30 – 18:30", sb: "ВЫХОДНОЙ", vs: "ВЫХОДНОЙ" },
  {name: "Филиал 2", pn: "8:30 – 18:30", vt: "8:30 – 18:30", sr: "8:30 – 18:30", ch: "8:30 – 18:30", pt: "8:30 – 18:30", sb: "ВЫХОДНОЙ", vs: "ВЫХОДНОЙ" },
  {name: "Филиал 3", pn: "8:30 – 18:30", vt: "8:30 – 18:30", sr: "8:30 – 18:30", ch: "8:30 – 18:30", pt: "8:30 – 18:30", sb: "ВЫХОДНОЙ", vs: "ВЫХОДНОЙ" },
])

Abouttext.delete_all
Abouttext.create!([
  {id: 1, title: "Заголовок", content: "Этот текст с легкостью можно поменять в админке."},
  {id: 2, title: "contactstext", content: "Этот текст с легкостью можно поменять в админке."}

])




Otd.delete_all
Otd.create!([
  {name: "Травмоталогия", content: "Этот текст с легкостью можно поменять в админке."},
  {name: "Стоматология", content: "Этот текст с легкостью можно поменять в админке."},
  {name: "Гинекология", content: "Этот текст с легкостью можно поменять в админке."}
])


Pageimage.delete_all
Pageimage.create!([
  {id: 1, name: "aboutone"},
  {id: 2, name: "abouttwo"},
  {id: 3, name: "serviceone"},
  {id: 4, name: "servicetwo"},
  {id: 5, name: "helpone"},
  {id: 6, name: "helptwo"},
  {id: 7, name: "contactone"},
  {id: 8, name: "contacttwo"},
  {id: 9, name: "helpplus"}
])
User.delete_all
User.create!([
  {id: 1, name: "admin", password: "secret", password_confirmation: "secret"}

])
