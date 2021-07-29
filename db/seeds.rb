# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(username: 'principal', password:'abc123', title: 'Mr.', last_name: 'Jones')
Teacher.create(admin: Admin.first, title: "No", last_name: "teacher")
Teacher.create(admin: Admin.first, username: 'teacher1', password:'abc123', title: 'Mrs.', last_name: 'Brown')
Teacher.create(admin: Admin.first, username: 'teacher2', password:'abc123', title: 'Mr.', last_name: 'Hart')
Teacher.create(admin: Admin.first, username: 'teacher3', password:'abc123', title: 'Dr.', last_name: 'Stone')
Klass.create(teacher: Teacher.second, grade: '8th Grade', subject: 'Math')
Klass.create(teacher: Teacher.third, grade: '4th Grade', subject: 'English')
Klass.create(teacher: Teacher.fourth, grade: '3rd Grade', subject: 'History')
Klass.create(teacher: Teacher.second, grade: '1st Grade', subject: 'Spelling')
Klass.create(teacher: Teacher.third, grade: '8th Grade', subject: 'Geography')
# Klass.create(teacher: Teacher.last, grade: "No ", subject: "class")
Parent.create(admin: Admin.first, username: 'parent', password:'abc123')
Student.create(parent: Parent.first, first_name: 'Shmuel', last_name: 'Goldstein', birth_date: "01/01/2000")
Student.create(parent: Parent.first, first_name: 'Boruch', last_name: 'Smith', birth_date: "01/01/2000")
Student.create(parent: Parent.first, first_name: 'John', last_name: 'Mark', birth_date: "01/01/2000")
Student.create(parent: Parent.first, first_name: 'Dan', last_name: 'Martinez', birth_date: "01/01/2000")
Student.create(parent: Parent.first, first_name: 'Bill', last_name: 'Rowan', birth_date: "01/01/2000")
GradeCategory.create(klass: Klass.first, student:Student.first)
GradeCategory.create(klass: Klass.first, student:Student.second)
GradeCategory.create(klass: Klass.first, student:Student.third)
GradeCategory.create(klass: Klass.first, student:Student.fourth)
GradeCategory.create(klass: Klass.first, student:Student.fifth)
GradeCategory.create(klass: Klass.second, student:Student.first)
GradeCategory.create(klass: Klass.second, student:Student.second)
GradeCategory.create(klass: Klass.second, student:Student.third)
GradeCategory.create(klass: Klass.third, student:Student.fourth)
GradeCategory.create(klass: Klass.third, student:Student.fifth)
GradeCategory.create(klass: Klass.fourth, student:Student.third)
GradeCategory.create(klass: Klass.fourth, student:Student.fifth)
GradeCategory.create(klass: Klass.fifth, student:Student.second)
GradeCategory.create(klass: Klass.fifth, student:Student.fourth)


