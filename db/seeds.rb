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

course1 = Course.create!(name: "Web Technologies", category: "Computación", teacher: teacher1)
lesson1_1 = Lesson.create!(title: "Clase 1", content: "En esta clase veremos lo siguiente:", course: course1)
lesson1_2 = Lesson.create!(title: "Clase 2", content: "Esta clase profundiza en el frontend.", course: course1)
lesson1_3 = Lesson.create!(title: "Clase 3", content: "Veremos el backend.", course: course1)
lesson1_4 = Lesson.create!(title: "Clase 4", content: "Integración de frontend y backend.", course: course1)

forum1_1 = Forum.create!(title: "Dudas Clase 1", lesson: lesson1_1)
forum1_2 = Forum.create!(title: "Dudas Clase 2", lesson: lesson1_2)
forum1_3 = Forum.create!(title: "Dudas Clase 3", lesson: lesson1_3)
forum1_4 = Forum.create!(title: "Dudas Clase 4", lesson: lesson1_4)

enroll1 = CourseEnrollment.create!(utilizer: student1, course: course1)

question1_1 = Question.create!(title: "Sobre la parte 2", content: "Profesor, no entendí la parte 2, ¿cómo funciona?", forum: forum1_1, utilizer: student1)
answer1_1 = Answer.create!(question: question1_1, utilizer: teacher1, content: "Funciona de la siguiente manera: ...")


question1_2 = Question.create!(title: "Duda sobre HTML básico", content: "¿Cuál es la diferencia entre una etiqueta div y una sección?", forum: forum1_2, utilizer: student1)
answer1_2 = Answer.create!(question: question1_2, utilizer: teacher1, content: "La etiqueta div se usa para agrupar contenido sin significado semántico, mientras que sección tiene un significado dentro de la estructura del documento.")


question1_3 = Question.create!(title: "Duda sobre APIs", content: "¿Qué es una API y cómo se utiliza?", forum: forum1_3, utilizer: student1)
answer1_3 = Answer.create!(question: question1_3, utilizer: teacher1, content: "Una API es una interfaz que permite la comunicación entre diferentes sistemas, facilitando el intercambio de datos.")


question1_4 = Question.create!(title: "Duda sobre integración", content: "¿Cómo integro el frontend con el backend?", forum: forum1_4, utilizer: student1)
answer1_4 = Answer.create!(question: question1_4, utilizer: teacher1, content: "Puedes integrar el frontend y el backend a través de solicitudes HTTP, utilizando AJAX o fetch para comunicarte con el servidor.")


teacher2 = Utilizer.create!(email: "email3@gmail.com", name: "Laura", last_name: "Gonzalez", password: "clave987", login: "lgonza", role_id: 1)
student2 = Utilizer.create!(email: "email4@gmail.com", name: "Juan", last_name: "Martinez", password: "clave54321", login: "jmartinez", role_id: 1)

course2 = Course.create!(name: "Data Science", category: "Informática", teacher: teacher2)
lesson2_1 = Lesson.create!(title: "Introducción a Data Science", content: "Fundamentos de Data Science.", course: course2)
lesson2_2 = Lesson.create!(title: "Análisis de Datos", content: "Cómo analizar datos.", course: course2)
lesson2_3 = Lesson.create!(title: "Modelado de Datos", content: "Técnicas de modelado de datos.", course: course2)
lesson2_4 = Lesson.create!(title: "Visualización de Datos", content: "Presentación de datos de manera visual.", course: course2)

forum2_1 = Forum.create!(title: "Dudas sobre Introducción", lesson: lesson2_1)
forum2_2 = Forum.create!(title: "Dudas sobre Análisis de Datos", lesson: lesson2_2)
forum2_3 = Forum.create!(title: "Dudas sobre Modelado de Datos", lesson: lesson2_3)
forum2_4 = Forum.create!(title: "Dudas sobre Visualización de Datos", lesson: lesson2_4)

enroll2 = CourseEnrollment.create!(utilizer: student2, course: course2)

question2_1 = Question.create!(title: "Pregunta sobre modelado", content: "¿Qué es el modelado de datos?", forum: forum2_3, utilizer: student2)
answer2_1 = Answer.create!(question: question2_1, utilizer: teacher2, content: "El modelado de datos es la representación estructurada de los datos.")


question2_2 = Question.create!(title: "Duda sobre ciencia de datos", content: "¿Qué es la ciencia de datos?", forum: forum2_1, utilizer: student2)
answer2_2 = Answer.create!(question: question2_2, utilizer: teacher2, content: "La ciencia de datos es el campo que utiliza métodos y algoritmos para extraer conocimiento de los datos.")


question2_3 = Question.create!(title: "Duda sobre análisis", content: "¿Cuáles son las técnicas más comunes de análisis de datos?", forum: forum2_2, utilizer: student2)
answer2_3 = Answer.create!(question: question2_3, utilizer: teacher2, content: "Las técnicas comunes incluyen análisis descriptivo, exploratorio y predictivo.")


question2_4 = Question.create!(title: "Duda sobre visualización", content: "¿Qué herramientas puedo usar para la visualización de datos?", forum: forum2_4, utilizer: student2)
answer2_4 = Answer.create!(question: question2_4, utilizer: teacher2, content: "Puedes usar herramientas como Tableau, Power BI, y bibliotecas de Python como Matplotlib y Seaborn.")



teacher3 = Utilizer.create!(email: "email5@gmail.com", name: "Ana", last_name: "Lopez", password: "password123", login: "alopez", role_id: 1)
student3 = Utilizer.create!(email: "email6@gmail.com", name: "Marta", last_name: "Rodriguez", password: "clave2022", login: "mrodriguez", role_id: 1)

course3 = Course.create!(name: "Machine Learning", category: "Ingeniería", teacher: teacher3)
lesson3_1 = Lesson.create!(title: "Introducción al Aprendizaje Automático", content: "Conceptos básicos del aprendizaje automático.", course: course3)
lesson3_2 = Lesson.create!(title: "Regresión Lineal", content: "Explicación de la regresión lineal.", course: course3)
lesson3_3 = Lesson.create!(title: "Regresión Logística", content: "Aplicación de la regresión logística.", course: course3)
lesson3_4 = Lesson.create!(title: "Redes Neuronales", content: "Introducción a las redes neuronales.", course: course3)

forum3_1 = Forum.create!(title: "Dudas sobre Introducción al Aprendizaje Automático", lesson: lesson3_1)
forum3_2 = Forum.create!(title: "Dudas sobre Regresión Lineal", lesson: lesson3_2)
forum3_3 = Forum.create!(title: "Dudas sobre Regresión Logística", lesson: lesson3_3)
forum3_4 = Forum.create!(title: "Dudas sobre Redes Neuronales", lesson: lesson3_4)

enroll3 = CourseEnrollment.create!(utilizer: student3, course: course3)

question3_1 = Question.create!(title: "Pregunta sobre regresión", content: "¿Qué es la regresión lineal?", forum: forum3_2, utilizer: student3)
answer3_1 = Answer.create!(question: question3_1, utilizer: teacher3, content: "La regresión lineal es un método para modelar la relación entre una variable dependiente y una o más independientes.")


question3_2 = Question.create!(title: "Duda sobre aprendizaje automático", content: "¿Qué es el aprendizaje automático?", forum: forum3_1, utilizer: student3)
answer3_2 = Answer.create!(question: question3_2, utilizer: teacher3, content: "El aprendizaje automático es una rama de la inteligencia artificial que permite a los sistemas aprender de datos.")


question3_3 = Question.create!(title: "Duda sobre regresión logística", content: "¿Cuándo se utiliza la regresión logística?", forum: forum3_3, utilizer: student3)
answer3_3 = Answer.create!(question: question3_3, utilizer: teacher3, content: "Se utiliza en problemas de clasificación donde la variable de salida es categórica.")


question3_4 = Question.create!(title: "Duda sobre redes neuronales", content: "¿Cómo funcionan las redes neuronales?", forum: forum3_4, utilizer: student3)
answer3_4 = Answer.create!(question: question3_4, utilizer: teacher3, content: "Las redes neuronales funcionan imitando el funcionamiento del cerebro humano, utilizando capas de neuronas.")



teacher4 = Utilizer.create!(email: "email7@gmail.com", name: "Pablo", last_name: "Ramirez", password: "clavepass789", login: "pramirez", role_id: 1)
student4 = Utilizer.create!(email: "email8@gmail.com", name: "Sofia", last_name: "Gomez", password: "sofia12345", login: "sgomez", role_id: 1)

course4 = Course.create!(name: "Inteligencia Artificial", category: "Ciencia de Datos", teacher: teacher4)
lesson4_1 = Lesson.create!(title: "Redes Neuronales", content: "Estudiaremos las redes neuronales y su funcionamiento.", course: course4)
lesson4_2 = Lesson.create!(title: "Aprendizaje Supervisado", content: "Conceptos de aprendizaje supervisado.", course: course4)
lesson4_3 = Lesson.create!(title: "Aprendizaje No Supervisado", content: "Fundamentos del aprendizaje no supervisado.", course: course4)
lesson4_4 = Lesson.create!(title: "Ética en IA", content: "Consideraciones éticas en inteligencia artificial.", course: course4)

forum4_1 = Forum.create!(title: "Dudas sobre Redes Neuronales", lesson: lesson4_1)
forum4_2 = Forum.create!(title: "Dudas sobre Aprendizaje Supervisado", lesson: lesson4_2)
forum4_3 = Forum.create!(title: "Dudas sobre Aprendizaje No Supervisado", lesson: lesson4_3)
forum4_4 = Forum.create!(title: "Dudas sobre Ética en IA", lesson: lesson4_4)

enroll4 = CourseEnrollment.create!(utilizer: student4, course: course4)

question4_1 = Question.create!(title: "Pregunta sobre capas ocultas", content: "¿Cómo se determinan las capas ocultas en una red neuronal?", forum: forum4_1, utilizer: student4)
answer4_1 = Answer.create!(question: question4_1, utilizer: teacher4, content: "Las capas ocultas se determinan en función de la complejidad del problema y los patrones de datos.")


question4_2 = Question.create!(title: "Duda sobre aprendizaje supervisado", content: "¿Qué es el aprendizaje supervisado?", forum: forum4_2, utilizer: student4)
answer4_2 = Answer.create!(question: question4_2, utilizer: teacher4, content: "El aprendizaje supervisado utiliza datos etiquetados para entrenar modelos.")


question4_3 = Question.create!(title: "Duda sobre aprendizaje no supervisado", content: "¿Cómo se aplica el aprendizaje no supervisado?", forum: forum4_3, utilizer: student4)
answer4_3 = Answer.create!(question: question4_3, utilizer: teacher4, content: "Se utiliza para encontrar patrones en datos sin etiquetar.")

question4_4 = Question.create!(title: "Duda sobre ética en IA", content: "¿Cuáles son las consideraciones éticas en IA?", forum: forum4_4, utilizer: student4)
answer4_4 = Answer.create!(question: question4_4, utilizer: teacher4, content: "Las consideraciones éticas incluyen el sesgo en los algoritmos y la privacidad de los datos.")
