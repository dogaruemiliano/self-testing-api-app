json.extract! @test, :id, :name
json.questions @test.questions do |question|
  json.extract! question, :id, :question, :correct_answer, :answered
end
