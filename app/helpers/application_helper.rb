module ApplicationHelper

  def progress_class(value)
  	return 'progress-bar-danger' if value < 40
  	return 'progress-bar-info' if value < 80
  	return 'progress-bar-danger' if value < 40
  end
end
