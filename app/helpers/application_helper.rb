module ApplicationHelper

  def progress_class(value)
  	return 'progress-bar-danger' if value < 40
  	return 'progress-bar-info' if value < 80
  	return 'progress-bar-success' if value <= 100
  end

  def alternate_locales
  	I18n.available_locales.map{|l|
    	yield(l)
  	}.join.html_safe
end
end
