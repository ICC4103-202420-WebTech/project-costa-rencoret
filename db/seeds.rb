# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end





teacher1 = Utilizer.create!(email: "email1@gmail.com", name: "Carlos", last_name: "Rencoret", password: "hola123", login: "cjrenco", role_id: 1)
student1 = Utilizer.create!(email: "email2@gmail.com", name: "Pedro", last_name: "Perez", password: "hola14443", login: "pperez", role_id: 1)



course1 = Course.create!(name:"Web Technologies", category: "Computación", teacher: teacher1)
lesson1_1 =Lesson.create!(title: "Clase 1", content: "En esta clase veremos lo siguiente: ", course: course1)
forum1_1 = Forum.create!(title: "Dudas Clase 1", lesson: lesson1_1)


enroll1 = CourseEnrollment.create!(utilizer: student1, course: course1)

question1_1 = Question.create!(title: "Sobre la parte 2", content: "Profesor, no entendi que hace en la parte 2, como funciona?", forum: forum1_1, utilizer: student1)
answer1_1 = Answer.create!(question: question1_1, utilizer: teacher1, content: "Funciona de la siguiente manera: ...")

teacher2 = Utilizer.create!(email: "email3@gmail.com", name: "Laura", last_name: "Gonzalez", password: "clave987", login: "lgonza", role_id: 1)
student2 = Utilizer.create!(email: "email4@gmail.com", name: "Juan", last_name: "Martinez", password: "clave54321", login: "jmartinez", role_id: 1)

course2 = Course.create!(name: "Data Science", category: "Informática", teacher: teacher2)
lesson2_1 = Lesson.create!(title: "Introducción a Data Science", content: "En esta lección aprenderemos sobre los fundamentos de Data Science.", course: course2)
forum2_1 = Forum.create!(title: "Dudas sobre Introducción", lesson: lesson2_1)

enroll2 = CourseEnrollment.create!(utilizer: student2, course: course2)

question2_1 = Question.create!(title: "Pregunta sobre la lección", content: "Profesora, ¿puede aclarar el concepto de modelado de datos?", forum: forum2_1, utilizer: student2)
answer2_1 = Answer.create!(question: question2_1, utilizer: teacher2, content: "El modelado de datos se refiere a la representación estructurada de los datos.")

