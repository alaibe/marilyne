module Marilyn
  # = Presenter Helper
  module Helper

    # Render a partial and build a new presenter object which is associate to the parial
    # ==== Examples
    #   presenter_for('base')
    #   # => render partial: 'base', object: BasePresenter.new(Base.new)
    #   
    #   You can specify the object you want present:
    #
    #   presenter_for('base', object: @object)
    #   # => render partial: 'base', object: BasePresenter.new(@object)
    #   
    #   or multiple object
    #
    #   presenter_for('base', objects: [@object, @other_object])
    #   # => render partial: 'base', object: BasePresenter.new(@object)
    #
    #   A block can also be passed and the the render will be call only block is true
    #
    #   presenter_for('base', object: @object) { |o| o.ok? }
    #
    # Options:
    # * <tt>:object</tt> - Specifies the object you want present
    # * <tt>:objects</tt> - You can pass multiple objects in your presenter
    # * <tt>:presenter</tt> - Specifies the presenter you want use
    def presenter_for(template, options = {})
      presenter_string = options[:presenter] || "#{template.camelize}Presenter"
      
      object           = extract_objects template, options[:object], options[:objects] 
      presenter        = presenter_string.constantize.new self, *object
      
      if block_given?
        return unless yield object
      end

      render partial: template, object: presenter  
    end

    private

    def extract_objects(base_name, object, objects)
      return object if object
      return objects if objects

      base_name.camelize.constantize.new
    end
  end
end