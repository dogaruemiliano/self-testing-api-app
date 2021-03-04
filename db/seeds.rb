puts "Destroying all models"
Test.destroy_all
puts "Destroyed Tests"
puts Question.destroy_all
puts "Destroyed Questions"
User.destroy_all
puts "Destroyed Users"
puts "Destroyed all models"

puts "Creating users"
first_user = User.create!(email: "dogaru@gmail.com", password: "123456")
second_user = User.create!(email: "emi@gmail.com", password: "123456")
puts "Created users"

puts "Creating tests"
histologie = Test.create!(name: "Histologie", user: first_user)
biologie = Test.create!(name: "Biologie", user: first_user)
chimie = Test.create!(name: "Chimie", user: second_user)
puts "Created tests"

puts "Creating questions"
puts Question.create!(
  question: "Intrebare intrebatoare1?",
  correct_answer: "Raspunsul corect",
  answered: true,
  test: histologie
)
puts Question.create!(
  question: "Intrebare intrebatoare2?",
  correct_answer: "Raspunsul corect",
  answered: false,
  test: histologie
)
puts Question.create!(
  question: "Intrebare intrebatoare3?",
  correct_answer: "Raspunsul corect",
  answered: false,
  test: histologie
)
puts Question.create!(
  question: "Intrebare intrebatoare4?",
  correct_answer: "Raspunsul corect",
  answered: true,
  test: histologie
)
puts Question.create!(
  question: "Intrebare intrebatoare1?",
  correct_answer: "Raspunsul corect",
  answered: false,
  test: biologie
)
puts Question.create!(
  question: "Intrebare intrebatoare2?",
  correct_answer: "Raspunsul corect",
  answered: false,
  test: biologie
)
puts Question.create!(
  question: "Intrebare intrebatoare3?",
  correct_answer: "Raspunsul corect",
  answered: false,
  test: biologie
)
puts Question.create!(
  question: "Intrebare intrebatoare1?",
  correct_answer: "Raspunsul corect",
  answered: false,
  test: chimie
)
puts Question.create!(
  question: "Intrebare intrebatoare2?",
  correct_answer: "Raspunsul corect",
  answered: true,
  test: chimie
)
