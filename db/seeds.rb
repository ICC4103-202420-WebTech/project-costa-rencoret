# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Utilizer.delete_all
Course.delete_all
Lesson.delete_all
Forum.delete_all
CourseEnrollment.delete_all
CourseProgress.delete_all
Question.delete_all
Answer.delete_all


teacher1 = Utilizer.create!(email: "email1@gmail.com", name: "Carlos", last_name: "Rencoret", password: "hola123", login: "cjrenco", role_id: 1)
student1 = Utilizer.create!(email: "email2@gmail.com", name: "Pedro", last_name: "Perez", password: "hola14443", login: "pperez", role_id: 1)



course1 = Course.create!(name:"Web Technologies", category: "Computación", teacher: teacher1)
lesson1_1 =Lesson.create!(title: "Clase 1", content: "En esta clase veremos lo siguiente: ", course: course1)
forum1_1 = Forum.create!(title: "Dudas Clase 1", lesson: lesson1_1)


enroll1 = CourseEnrollment.create!(student: student1, course: course1)

question1_1 = Question.create!(title: "Sobre la parte 2", content: "Profesor, no entendi que hace en la parte 2, como funciona?", forum: forum1_1, utilizer: student1)
answer1_1 = Answer.create!(question: question1_1, utilizer: teacher1, content: "Funciona de la siguiente manera: ...")
