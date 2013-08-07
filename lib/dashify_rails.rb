require "dashify_rails/engine"

module DashifyRails
  def self.dashify_jobs_path
    "app/jobs"
  end
end

require "dashify_rails/ext/application_helper"
require "dashify_rails/channel"
require "dashify_rails/manager"
