json.array! @questions do |question|
  json.extract! question, :id, :question, :correct_answer, :answered
end
