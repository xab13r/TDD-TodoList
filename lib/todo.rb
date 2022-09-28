class Todo
  def initialize(task) # task is a string
	 @task = {"task" => task, "status" => false} # status = false, task is not done
  end

  def task
	  return @task['task']
  end

  def mark_done!
    @task['status'] = true
  end

  def done?
    return @task['status']
  end
end
