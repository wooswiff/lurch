require 'rails/generators'

module Bootbone
  module Generators
    class InstallGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      def seed_dir_files
        directory "bb_app", "app/assets/javascripts/#{file_name}"
      end

    end
  end
end

