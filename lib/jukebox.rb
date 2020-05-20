# Add your code here
def help
  puts "I accept the following commands:"
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"
end

def list(songs)
  for i in 0..songs.length {puts "#{i+1}. #{songs[i]}"}
end
  
def play(songs)
  puts "Please enter a song name or number"
  user_input=gets.strip
  if user_input.to_i > 0 && user_input.to_i <=songs.length
    puts "Playing #{songs[user_input.to_i-1]}"
  elsif songs.includes?(user_input)
    puts "Playing #{user_input}"
  else
    play(songs)
  end
end