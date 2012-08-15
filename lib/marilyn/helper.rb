module Marilyn
  module Helper
    def presenter_for(template, options = {})
      presenter_string = options[:presenter] || "#{template}Presenter"
      
      object           = options[:object] || template.constantize.new
      presenter        = presenter_string.constantize.new template, object
      
      render partial: template, object: object  
    end
  end
end