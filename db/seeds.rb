# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

u1 = User.create!(name: "Caio", email: "cpeluti@gmail.com", registration: "190085312")
u2 = User.create!(name: "Isaque", email: "isak369@hotmail.com", registration: "190085311")
u3 = User.create!(name: "Genaina", email: "genaina@hotmail.com", registration: "190085310")

m1 = Subject.create!(name: "Engenharia de Software", subject_code: "CIC2024")
m2 = Subject.create!(name: "Linguagens de Programação", subject_code: "CIC666")

t1 = m1.subject_classes.create!

e1 = Enrollment.create!(user:u1, subject_class: t1, role: "aluno")
e2 = Enrollment.create!(user:u2, subject_class: t1, role: "aluno")
e2 = Enrollment.create!(user:u3, subject_class: t1, role: "professor")

t = Template.create!(name: "teste")
q = t.template_questions.create!(question_type: "text", question_text: "teste de pergunta")

f = Form.create!(subject_class: t1, t)