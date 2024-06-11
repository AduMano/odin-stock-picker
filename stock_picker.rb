# Testing..

arr = [1, 2, 3]

def create_hash(element)
  { "value" => element * 2 }
end

result = arr.map { |element| create_hash(element) }

puts result.to_s  # Output: [{"value": 2}, {"value": 4}, {"value": 6}]
