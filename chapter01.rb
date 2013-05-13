puts 365 * 24
puts 10 * 365 * 24 * 60

now = Time.now
birth = Time.local(1979, 7, 24, 6, 00, 00)

puts now.to_i - birth.to_i