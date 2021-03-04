json.array! @tests do |test|
  json.extract! test, :id, :name
end
