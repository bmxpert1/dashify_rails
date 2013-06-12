module DashifyRails
  class Channel

    attr_reader :channel_name

    def initialize(channel_name)
      @channel_name = channel_name
    end

    def update(value)
      WebsocketRails[@channel_name].trigger 'update', value
    end
  end
end