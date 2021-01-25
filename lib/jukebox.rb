songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def continue
  puts "\ntype 'help' to return to menu or type next command."
end 

def input_prompt
  gets.strip
end 

def help 
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end 

def list songs
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end 



def play songs 
  puts "Please enter a song name or number:"
  input = input_prompt
  
  case 
    when songs.include?(input)
      puts "Playing #{input}"
    when input.to_i < songs.length && input.to_i > 0
      puts "Playing #{songs[input.to_i - 1]}"
    else 
      puts "Invalid input, please try again"
  end
end 


def exit_jukebox
  puts "Goodbye"
end 


def run songs 
  puts "Please enter a command:"
  input = input_prompt
  
  while input != "exit"
  case 
   when input == "list"
      list(songs)
      continue
      input = input_prompt
    when input == "play"
      play(songs)
      continue
      input = input_prompt
    when input == "help"
      help
      continue
      input = input_prompt
    when input == "exit"
      exit_jukebox
    else
      puts "Invalid command"
      help
      continue
      input = input_prompt
    end
  end
  exit_jukebox
end


