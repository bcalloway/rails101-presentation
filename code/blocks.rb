3.times { puts "Ho!"}

hash = { "dog" => "canine", "cat" => "feline"}
hash.each do |key, value|
  puts "#{key} -> #{value}"
end