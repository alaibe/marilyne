module Marilyn
  # == Base presenter
  class Presenter

    attr_reader :template, :object, :objects

    #  params:
    # * <tt>:template</tt> - Template where you frome
    # * <tt>:objects</tt> - All presented objects
    def initialize(template, *objects)
      @template = template
      objects.length == 1 ? @object = objects.first : @objects = objects 
    end
  end
end