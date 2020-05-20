# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  for i in 0..songs.length-1 do 
    puts "#{i+1}. #{songs[i]}"
  end
end
  
def play(songs)
  puts "Please enter a song name or number:"
  user_input=gets.strip
  if (user_input.to_i > 0) && (user_input.to_i <= songs.length)
    puts "Playing #{songs[user_input.to_i-1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
    #play(songs)
  end
end

def exit_jukebox
  puts "Goodbye"
end

#exit_jukebox
#list(["song1", "songs2"])
#help