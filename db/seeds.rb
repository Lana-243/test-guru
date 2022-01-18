# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)



categories = Category.create!([
  { title: "Ruby" }, 
  { title: "Java" },
  { title: "HTML" }
])

users = User.create!([
  { name: "Paul", email: "paul@mail.com" }, 
  { name: "John", email: "john@mail.com" },
  { name: "Matt", email: "matt@mail.com" },
  { name: "Mary", email: "mary@mail.com" },
  { name: "Caroline", email: "caroline@mail.com" }
])

tests = Test.create!([
  { title: "Test1", level: 1, category_id: categories[0].id, author_id: users[0].id },
  { title: "Test2", level: 2, category_id: categories[2].id, author_id: users[3].id },
  { title: "Test3", level: 1, category_id: categories[1].id, author_id: users[0].id },
  { title: "Test4", level: 1, category_id: categories[0].id, author_id: users[1].id }
])

questions = Question.create!([
  { title: "Which is the file extension for saving the ruby file?", test_id: tests[0].id },
  { title: "…syntax matches with Ruby syntax", test_id: tests[0].id },
  { title: "Ruby is an object oriented general purpose programming language", test_id: tests[0].id },
  { title: "What does .upcase method do?", test_id: tests[3].id },
  { title: "What does the 1...10 indicate?", test_id: tests[3].id},
  { title: "Correct HTML tag for the largest heading is", test_id: tests[1].id },
  { title: "All HTML tags must be enclosed in?", test_id: tests[1].id },
  { title: "Choose the correct HTML tag to make a text Italic", test_id: tests[1].id },
  { title: "In which file database table configuration is stored?", test_id: tests[2].id },
  { title: "Which of the following functions is used to find and fix bugs in the Java programs?", test_id: tests[2].id },
  { title: "...is the return type of the hashCode() method in the Object class?", test_id: tests[2].id }
])


Answer.create!([
 { title: ".rb", correct: true, question_id: questions[0].id },
 { title: ".ruby", correct: false, question_id: questions[0].id },
 { title: ".rrb", correct: false, question_id: questions[0].id },
 { title: "None of the above", correct: false, question_id: questions[0].id },
 { title: "Java", correct: false, question_id: questions[1].id },
 { title: "PHP", correct: false, question_id: questions[1].id },
 { title: "Perl", correct: true, question_id: questions[1].id },
 { title: "None of the above", correct: false, question_id: questions[1].id },
 { title: "true", correct: true, question_id: questions[2].id },
 { title: "false", correct: false, question_id: questions[2].id },
 { title: "Convert the string to lowercase", correct: false, question_id: questions[3].id },
 { title: "Convert the string to uppercase", correct: true, question_id: questions[3].id },
 { title: "Convert only lovercase string to uppercase and vice-versa", correct: false, question_id: questions[3].id },
 { title: "None of the above", correct: false, question_id: questions[3].id },
 { title: "Inclusive range", correct: false, question_id: questions[4].id },
 { title: "Exclusive range", correct: true, question_id: questions[4].id },
 { title: "Both inclusive and exclusive range", correct: false, question_id: questions[4].id },
 { title: "None of above", correct: false, question_id: questions[4].id },
 { title: "<h6>", correct: false, question_id: questions[5].id },
 { title: "<heading>", correct: false, question_id: questions[5].id },
 { title: "<h1>", correct: true, question_id: questions[5].id },
 { title: "<head>", correct: false, question_id: questions[5].id },
 { title: "? and !", correct: false, question_id: questions[6].id },
 { title: "< and >", correct: true, question_id: questions[6].id },
 { title: "{ and }", correct: false, question_id: questions[6].id },
 { title: "# and #", correct: false, question_id: questions[6].id },
 { title: "< and >", correct: false, question_id: questions[2].id },
 { title: "<italic>", correct: false, question_id: questions[7].id },
 { title: "<it>", correct: false, question_id: questions[7].id },
 { title: "<i>", correct: true, question_id: questions[7].id },
 { title: "<il>", correct: false, question_id: questions[7].id },
 { title: ".sql", correct: false, question_id: questions[8].id },
 { title: ".ora", correct: false, question_id: questions[].id },
 { title: ".hbm", correct: true, question_id: questions[8].id },
 { title: ".dbm", correct: false, question_id: questions[8].id },
 { title: "JVM", correct: false, question_id: questions[9].id },
 { title: "JDK", correct: false, question_id: questions[9].id },
 { title: "JRE", correct: false, question_id: questions[9].id },
 { title: "JDB", correct: true, question_id: questions[9].id },
 { title: "int", correct: true, question_id: questions[10].id },
 { title: "Object", correct: false, question_id: questions[10].id },
 { title: "void", correct: false, question_id: questions[10].id },
 { title: "Javlonga", correct: false, question_id: questions[10].id }
])

Result.create!([
  { user_id: users[0].id, test_id: tests[2].id },
  { user_id: users[0].id, test_id: tests[1].id },
  { user_id: users[1].id, test_id: tests[0].id },
  { user_id: users[1].id, test_id: tests[2].id },
  { user_id: users[3].id, test_id: tests[0].id },
  { user_id: users[2].id, test_id: tests[4].id },
  { user_id: users[3].id, test_id: tests[6].id },
  { user_id: users[1].id, test_id: tests[9].id },
  { user_id: users[4].id, test_id: tests[5].id },
])
