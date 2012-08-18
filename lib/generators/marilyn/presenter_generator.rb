module Marilyn
  class PresenterGenerator < Rails::Generators::Base

    source_root File.expand_path("../../templates", __FILE__)

    desc "New presenter"
    argument :presenter_name, :type => :string

    def new_presenter_file
      empty_directory 'app/presenters'
      template 'presenter.rb', "app/presenters/#{presenter_name.singularize}_presenter.rb"
    end
  end
end