# encoding: utf-8

def granpaClock
  now = Time.now.strftime('%l')
  now.to_i.times do
    yield
  end
end

granpaClock do
  puts 'DONG!'
end

granpaClock do
  puts 'BONG!'
end