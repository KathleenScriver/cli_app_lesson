class Cli
    attr_reader :user

    def initialize(user)
        @user = user
    end

    def start
        puts "Welcome #{user.name}!"
        choose_animal
    end

    def choose_animal
        puts "What animal do you love?"
        animal_choice = gets.chomp.downcase

        if animal_choice == "cat"
            puts "meow meow #{user.name}!"
        elsif animal_choice == "dog"
            puts "woof woof #{user.name}!"
        else
            puts "Wrong, there are only two animals, your love is wrong."
            exit
        end
        choose_animal
    end
end