class Router # = intermediary
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      call_controller(action)
    end
  end

  private

  def print_actions
    puts "\n---"
    puts 'What do you want to do?'
    puts '1 - Display tasks'
    puts '2 - Add a new task'
    puts '3 - Mark a task as done'
    puts '4 - Remove a task'
    puts '---'
  end

  def call_controller(action)
    case action
    when 1 then @controller.list_all
    when 2 then @controller.add
    when 3 then @controller.mark_as_done
    when 4 then @controller.delete
    else
      puts "Please type 1, 2, 3 or 4 :)"
    end
  end
end
