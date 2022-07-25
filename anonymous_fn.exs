multiply = fn x, y -> IO.inspect(x * y) end
multiply.(20, 20)

greet = fn name -> 
  greetings = "Hello, #{name}"
  IO.inspect(greetings)
end

greet.("Luca")
