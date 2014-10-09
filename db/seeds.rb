Job.delete_all
Job.create!([
  {id: 1 }

])
Person.delete_all
Person.create!([
  {id: 1, name: "Быков", content: "Несколько слов о сотруднике"},
  {id: 2, name: "Лобанов", content: "Несколько слов о сотруднике" },
  {id: 3, name: "Варя", content: "Несколько слов о сотруднике"},
  {id: 4, name: "Иван Натанович", content: "Несколько слов о сотруднике"},
  {id: 5, name: "Еще кто то", content: "Несколько слов о сотруднике"},
  {id: 6, name: "Еще кто то", content: "Несколько слов о сотруднике"},
  {id: 7, name: "Еще кто то", content: "Несколько слов о сотруднике"},
  {id: 8, name: "Еще кто то", content: "Несколько слов о сотруднике"},
  {id: 9, name: "Еще кто то", content: "Несколько слов о сотруднике"},
  {id: 10, name: "Еще кто то", content: "Несколько слов о сотруднике"},
  {id: 11, name: "Еще кто то", content: "Несколько слов о сотруднике"},
  {id: 12, name: "Еще кто то", content: "Несколько слов о сотруднике"}
])
Post.delete_all
Post.create!([
  {id: 1, title: "Заголовок", content: "Этот текст с легкостью можно поменять в админке."},
  {id: 2, title: "Заголовок", content: "Этот текст с легкостью можно поменять в админке."},
  {id: 3, title: "Заголовок", content: "Этот текст с легкостью можно поменять в админке."},
  {id: 4, title: "Заголовок", content: "Этот текст с легкостью можно поменять в админке."},
  {id: 5, title: "Заголовок", content: "Этот текст с легкостью можно поменять в админке."},
  {id: 6, title: "Заголовок", content: "Этот текст с легкостью можно поменять в админке."}
])
Filial.delete_all
Filial.create!([
  {id: 1, name: "Филиал 1", pn: "8:30 – 18:30", vt: "8:30 – 18:30", sr: "8:30 – 18:30", ch: "8:30 – 18:30", pt: "8:30 – 18:30", sb: "ВЫХОДНОЙ", vs: "ВЫХОДНОЙ" },
  {id: 2, name: "Филиал 2", pn: "8:30 – 18:30", vt: "8:30 – 18:30", sr: "8:30 – 18:30", ch: "8:30 – 18:30", pt: "8:30 – 18:30", sb: "ВЫХОДНОЙ", vs: "ВЫХОДНОЙ" },
  {id: 3, name: "Филиал 3", pn: "8:30 – 18:30", vt: "8:30 – 18:30", sr: "8:30 – 18:30", ch: "8:30 – 18:30", pt: "8:30 – 18:30", sb: "ВЫХОДНОЙ", vs: "ВЫХОДНОЙ" },
])

Abouttext.delete_all
Abouttext.create!([
  {id: 1, title: "Заголовок", content: "Этот текст с легкостью можно поменять в админке."},
  {id: 2, title: "contactstext", content: "Этот текст с легкостью можно поменять в админке."}

])




Otd.delete_all
Otd.create!([
  {id: 1, name: "Травмоталогия", content: "Этот текст с легкостью можно поменять в админке."},
  {id: 2, name: "Стоматология", content: "Этот текст с легкостью можно поменять в админке."},
  {id: 3, name: "Гинекология", content: "Этот текст с легкостью можно поменять в админке."}
])


Pageimage.delete_all
Pageimage.create!([
  {id: 1, name: "aboutone", pgimg: "/demo/1.jpg"},
  {id: 2, name: "abouttwo", pgimg: "/demo/1.jpg"},
  {id: 3, name: "serviceone", pgimg: "/demo/1.jpg"},
  {id: 4, name: "servicetwo", pgimg: "/demo/2.jpg"},
  {id: 5, name: "helpone", pgimg: "/demo/1.jpg"},
  {id: 6, name: "helptwo", pgimg: "/demo/2.jpg"},
  {id: 7, name: "contactone", pgimg: "/demo/1.jpg"},
  {id: 8, name: "contacttwo", pgimg: "/demo/2.jpg"},
  {id: 9, name: "helpplus", pgimg: "/demo/2.jpg"}
])
User.delete_all
User.create!([
  {id: 1, name: "admin", password: "secret", password_confirmation: "secret"}

])
