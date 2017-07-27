# A program meant to simulate 
# escaping from a trapped room.

# Introduce the player to
# the game.

 print "\nHello and welcome! This is a game about escaping a room. Currently, in development.\
  \n\nPRESS RETURN TO CONTINUE."

gets.chomp

puts '-' * 10



# Tutorial that will need
# lots of changing as the
# program is crafted.

puts "\nYour objective is to escape the room. Available commands are LOOK, PICKUP, USE.\n\n\
These commands are used by entering them first. Then you will be prompted for the context.\n\n \
Example: \n\nYou enter 'LOOK' and it will ask: \n\n'Where do you with to look?'\n\nthen you could enter \
'NORTH' and the game would tell you what you can see to the north.\n\nPRESS RETURN TO START THE GAME."

gets.chomp

# Game officially starts here

puts '-' * 10

puts "\nYou awaken to find yourself in a room that is unfamiliar to you. You have no memory of how or why\
 you ended up here. The room is stuffy but you can feel a cool breeaze from underneath\
 the door. What will you do?\n"

loop do

user_input = gets.chomp.downcase

case user_input

when "look" || "pickup" || "use"
  $user_answer_look = 1
  break

when "pickup"
  $user_answer_pickup = 1
  break

when "use"
  $user_answer_use = 1
  break

when "exit"
  puts "\nARE YOU SURE YOU WANT TO EXIT THE GAME? Y/N\n"

  exit_answer = gets.chomp.downcase

if exit_answer == "y" 
  exit
else
  puts "\nAvailable commands are 'LOOK', 'USE', and 'PICKUP'."
end

else
  $user_answer_error = 1
  puts "\nI'm sorry, that is an invalid command."
end
  end


loop do

if $user_answer_look == 1
 puts "\nWhich direction would you like to look?"
break

elsif $user_answer_pickup == 1
  puts "\nWhat do you wish to pick up?"
break

elsif $user_answer_use == 1
  puts "\nWhat do you wish to use?"
break

else

puts "\nI'm sorry, that is an invalid command."

end
  end

puts "\nIt broke out of the loop."

user_answer_context = gets.chomp.downcase
