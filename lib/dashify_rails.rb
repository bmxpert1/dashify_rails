require "dashify_rails/engine"

module DashifyRails
  def self.app_dashify_path
    "app/dashboard"
  end
end

require "dashify_rails/ext/application_helper"
require "dashify_rails/channel"
require "dashify_rails/manager"
