class TasksView
  def display(tasks)
    # take an array
    tasks.each_with_index do |task, index|
      # '[ ]' / '[x]'
      done = task.done? ? '[x]' : '[ ]'
      # iterate over and display each task nicely formatted
      puts "#{done} #{index + 1}. #{task.description}"
    end
  end

  def ask_for_index
    # ask for index
    puts 'Which task (index)?'
    # return user's input
    gets.chomp.to_i - 1
  end

  def ask_for_description
    # ask for description
    puts 'What do you want to do?'
    # return user's input
    gets.chomp
  end
end


