class TasksController
  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def list_all
    # grab all tasks from the repo
    tasks = @repository.all
    # ask view to display them one by one
    @view.display(tasks)
  end

  def add
    # view: ask for description
    description = @view.ask_for_description # => String
    # create a new task instance
    task = Task.new(description) # => instance of Task
    # repo: store the task
    @repository.add(task)
  end

  def mark_as_done
    # display all tasks to the user (list_all)
    list_all
    # ask for index
    index = @view.ask_for_index
    # repo: find the correct task
    task = @repository.find(index)
    # model: mark as done
    task.complete!
  end

  def delete
    # display all tasks to the user (list_all)
    list_all
    # ask for index
    index = @view.ask_for_index
    # repo: delete task
    @repository.remove(index)
  end
end
