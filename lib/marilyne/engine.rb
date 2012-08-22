module Marilyne
  class Engine < ::Rails::Engine
    initializer 'marilyne.initialize' do
      ActiveSupport.on_load(:action_view) do
        include Marilyne::Helper
      end
    end
  end
end
