#Random number guessing game Using R
x <- sample(1:50,1)
my.guess <- -1
while(my.guess != x){
  my.guess <- as.integer(readline(prompt = "Guess a number between 1 and 50: "))
  if(my.guess == x){
    print("You guessed correct: ")
  }
  else if(my.guess < x){
    print("Your guess is too low")
  }
  else if(my.guess > x){
    print("Your guess is too high")
  }
}