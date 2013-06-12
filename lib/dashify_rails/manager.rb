require 'active_support/hash_with_indifferent_access'

module DashifyRails
  class << self
    def manager
      @manager ||= Manager.new
    end

    def [](channel)
      manager[channel]
    end
  end

  class Manager
    
    attr_reader :channels

    def initialize
      @channels = HashWithIndifferentAccess.new
    end

    def [](channel)
      @channels[channel] ||= Channel.new channel
    end
  end
end