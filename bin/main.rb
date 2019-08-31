module main

    def get_inputs
        puts "\nWELCOME TO THE TIC TAC TOE GAME"
        puts "==========================="
        puts "Which player do you prefer?"
        puts "1 for X or 2 for O"
        puts "==========================="
        @rol = gets.chomp.to_i
        validate_rol    
    end

    def play
        puts "\nPlayer #{@rol} is playing!"
        puts "Select a number in the cell"
        @cell = gets.chomp.to_i
        valid_move?
    end

    def again?
        puts "##################"
        puts "#PLAY AGAIN? (y/n)"
        puts "##################"
        again = gets.chomp
            if again == "y" 
                @board=["1","2","3","4","5","6","7","8","9"]
                get_inputs 
            else 
                puts "Adios Amigo!" 
                exit
            end
    end
end