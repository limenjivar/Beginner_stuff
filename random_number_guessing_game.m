game = input('Want to play a game? (Y or N): ','s');

while game == 'Y' | game=='y'
    num = randi([1 100]);
    guess = input('Guess the number between [1,100]: ');
    count = 0;
    while guess ~= num
        if guess>num
            fprintf('Your guess is too high.\n')
            guess = input('Guess the number between [1,100]: ');
            count = count+1;
        elseif guess<num
            fprintf('Your guess is too low.\n')
            guess = input('Guess the number between [1,100]: ');
            count=count+1;
        else
            
        end
    end
    
    fprintf('You guessed correct!\n')
    fprintf('For this game, it took you %d guesses.',count+1)
    fprintf('\n')
    game = input('Want to continue playing? (Y or N):','s');
end
