###
# Signs are $15 per square foot
# If it is two colours or less, it is $10/colour, otherwise it is $15/colour
# Tax is 15%
# The boss insists that he just wants one function that he can put the dimensions and colour count in, and get the total back
puts "How long is your sign?"
l = gets.chomp.to_i
puts "How wide is your sign?"
w = gets.chomp.to_i
puts "How many colours are you using"
c = gets.chomp.to_i

def sign_price(length, width, colours)
  sizePrice = 15
  colourPrice1 = 10
  colourPrice2 = 15
  tax_rate = (115/100)
  colourThreshold = 2
  squareft = length * width
  price = 0

  price = squareft * sizePrice
  if colours <= colourThreshold
      price += colours * colourPrice1
  else 
      price += colours * colourPrice2
  end

  return price * tax_rate

end

puts sign_price(5, 5, 5)

puts "the total price of your sign is: #{sign_price( l, w, c)}"

