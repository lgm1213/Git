class Animal
  def jumped_over(first,second)
    "it jumped"
  end
end

quick_fox = Animal.new
lazy_dog = 1
daisy_log = 2
quick_fox.jumped_over(lazy_dog, daisy_log)

p quick_fox