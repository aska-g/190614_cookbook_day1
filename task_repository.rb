class TaskRepository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def add(task)
    @tasks << task
  end

  def find(index)
    @tasks[index]
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end
