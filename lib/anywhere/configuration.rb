require 'dm-core'

module Anywhere
  class Configuration
    attr_accessor :redirect_to, :database, :redirect_status
    
    def database=(database)
      DataMapper.setup(:default, database)
      @database = database
    end
  end
end