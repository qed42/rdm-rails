module ApplicationHelper

  def errors(instance)
    if instance.errors.any?
      output = '<ul id="flash_error">'
      instance.errors.full_messages.each do |msg|
        output += '<li>'+ msg +'</li>'
      end
      output += '</ul>'
      output.html_safe
    end
  end
end
