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
  { title: "Test1", level: 1, category: categories[0], author: users[0] },
  { title: "Test2", level: 2, category: categories[2], author: users[3] },
  { title: "Test3", level: 1, category: categories[1], author: users[0] },
  { title: "Test4", level: 1, category: categories[0], author: users[1] }
])

questions = Question.create!([
  { title: "Which is the file extension for saving the ruby file?", test: tests[0] },
  { title: "…syntax matches with Ruby syntax", test: tests[0] },
  { title: "Ruby is an object oriented general purpose programming language", test: tests[0] },
  { title: "What does .upcase method do?", test: tests[3] },
  { title: "What does the 1...10 indicate?", test: tests[3]},
  { title: "Correct HTML tag for the largest heading is", test: tests[1] },
  { title: "All HTML tags must be enclosed in?", test: tests[1] },
  { title: "Choose the correct HTML tag to make a text Italic", test: tests[1] },
  { title: "In which file database table configuration is stored?", test: tests[2] },
  { title: "Which of the following functions is used to find and fix bugs in the Java programs?", test: tests[2] },
  { title: "...is the return type of the hashCode() method in the Object class?", test: tests[2] }
])


Answer.create!([
 { title: ".rb", correct: true, question: questions[0] },
 { title: ".ruby", correct: false, question: questions[0] },
 { title: ".rrb", correct: false, question: questions[0] },
 { title: "None of the above", correct: false, question: questions[0] },
 { title: "Java", correct: false, question: questions[1] },
 { title: "PHP", correct: false, question: questions[1] },
 { title: "Perl", correct: true, question: questions[1] },
 { title: "None of the above", correct: false, question: questions[1] },
 { title: "true", correct: true, question: questions[2] },
 { title: "false", correct: false, question: questions[2] },
 { title: "Convert the string to lowercase", correct: false, question: questions[3] },
 { title: "Convert the string to uppercase", correct: true, question: questions[3] },
 { title: "Convert only lovercase string to uppercase and vice-versa", correct: false, question: questions[3] },
 { title: "None of the above", correct: false, question: questions[3] },
 { title: "Inclusive range", correct: false, question: questions[4] },
 { title: "Exclusive range", correct: true, question: questions[4] },
 { title: "Both inclusive and exclusive range", correct: false, question: questions[4] },
 { title: "None of above", correct: false, question: questions[4] },
 { title: "<h6>", correct: false, question: questions[5] },
 { title: "<heading>", correct: false, question: questions[5] },
 { title: "<h1>", correct: true, question: questions[5] },
 { title: "<head>", correct: false, question: questions[5] },
 { title: "? and !", correct: false, question: questions[6] },
 { title: "< and >", correct: true, question: questions[6] },
 { title: "{ and }", correct: false, question: questions[6] },
 { title: "# and #", correct: false, question: questions[6] },
 { title: "< and >", correct: false, question: questions[2] },
 { title: "<italic>", correct: false, question: questions[7] },
 { title: "<it>", correct: false, question: questions[7] },
 { title: "<i>", correct: true, question: questions[7] },
 { title: "<il>", correct: false, question: questions[7] },
 { title: ".sql", correct: false, question: questions[8] },
 { title: ".ora", correct: false, question: questions[8] },
 { title: ".hbm", correct: true, question: questions[8] },
 { title: ".dbm", correct: false, question: questions[8] },
 { title: "JVM", correct: false, question: questions[9] },
 { title: "JDK", correct: false, question: questions[9] },
 { title: "JRE", correct: false, question: questions[9] },
 { title: "JDB", correct: true, question: questions[9] },
 { title: "int", correct: true, question: questions[10] },
 { title: "Object", correct: false, question: questions[10] },
 { title: "void", correct: false, question: questions[10] },
 { title: "Javlonga", correct: false, question: questions[10] }
])

Result.create!([
  { user: users[0], test: tests[2] },
  { user: users[0], test: tests[1] },
  { user: users[1], test: tests[0] },
  { user: users[1], test: tests[2] },
  { user: users[3], test: tests[0] },
  { user: users[2], test: tests[3] },
  { user: users[3], test: tests[2] },
  { user: users[1], test: tests[1] },
  { user: users[4], test: tests[3] }
])
