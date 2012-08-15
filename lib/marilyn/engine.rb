module Marilyn
  class Engine < ::Rails::Engine
    initializer 'marilyn.initialize' do
      ActiveSupport.on_load(:action_view) do
        include Marilyn::Helper
      end
    end
  end
end