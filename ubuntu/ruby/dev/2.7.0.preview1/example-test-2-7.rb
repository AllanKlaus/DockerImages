name = 'Allan Klaus'
age = 28
profession = 'Software Developer'

# Example pattern matching

pattern_matching_example = {
  name: name,
  age: age,
  profession: profession
}.to_json

# Current syntax
person = JSON.parse(pattern_matching_example, symbolize_names: true)
if person[:name] == name
  if person[:age] == age
    p person[:profession]
  end
end

# New syntax
case JSON.parse(pattern_matching_example, symbolize_names: true)
  in { name: name, age: age, profession: matching_profession }
    p matching_profession
end

# Using guard in new syntax
case JSON.parse(pattern_matching_example, symbolize_names: true)
  in { name: 'Allan Klaus', age: 28, profession: matching_profession } if age < 50
    p "You are a young #{matching_profession}"
end

# Using types
case JSON.parse(pattern_matching_example, symbolize_names: true)
  in { name: String, age: Integer, profession: matching_profession } if age < 50
    p "You are a young #{matching_profession}"
end

# Enumerable#tally
# Count element on enumarable
array_to_count_elements = ["a", "b", "c", "b"]
b = Hash.new(0)

array_to_count_elements.inject({}) do |hash, element|
  hash[element] += 1
  hash
end

#  New syntax
array_to_count_elements.tally

# Update of emojins
# http://unicode.org/emoji/charts/full-emoji-list.html#1f469_1f3fb_200d_1f4bb
puts "\u{1f60e}"  # sunglasses