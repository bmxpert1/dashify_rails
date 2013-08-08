module DashifyRails
  class Engine < ::Rails::Engine
    isolate_namespace DashifyRails

    initializer "add dashify jobs to path" do
      Dir["#{Rails.root}/#{DashifyRails.app_dashify_path}/jobs/**/*.rb"].each do |file|
        require file
      end
    end
  end
end
