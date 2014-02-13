require 'spec_helper'
require 'generators/lurch/install/install_generator'

describe Lurch::Generators::InstallGenerator, "using custom matcher", type: :generator do
  destination File.expand_path("../../tmp", __FILE__)

  before do
    prepare_destination
    run_generator %w(my_bb_app)
  end

  # helper for matching dir/file structure taken from here: https://github.com/stevehodgkiss/generator_spec
  specify "base install files" do
    destination_root.should have_structure {
      directory "app" do
        directory "assets" do
          directory "javascripts" do
            directory "my_bb_app" do
              directory "models"
              directory "views"
              file "my_bb_app.js" do
                contains "return new App()"
              end
            end
          end
        end
      end
    }
  end
end
