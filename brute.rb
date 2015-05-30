@symbols = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
@password = "dA1p4"
@max_length = 5
 
def bruteforce_password(value)
  print "#{value} "
  if value.length == 1 && value == @password
    puts "\nPassword: #{value}"
    exit
  end

  return if value.length >= @max_length
 
  @symbols.each do |symbol|
    try = value + symbol
 
    if try == @password
      puts "\nPassword: #{try}"
      exit
    else
      bruteforce_password(try)
    end
  end
 
end
 
@symbols.each do |symbol|
  bruteforce_password(symbol)
end