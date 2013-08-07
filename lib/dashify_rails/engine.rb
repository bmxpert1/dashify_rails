module DashifyRails
  class Engine < ::Rails::Engine
    isolate_namespace DashifyRails

    initializer "add dashify jobs to path" do
      Dir["#{Rails.root}/#{DashifyRails.dashify_jobs_path}/**/*.rb"].each do |file|
        require file
      end
    end
  end
end
