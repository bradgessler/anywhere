require 'dm-core'
require 'dm-adjust'

module Anywhere
  class Domain
    include DataMapper::Resource
    
    property :host,           String,   :unique => true, :required => true, :key => true
    property :redirect_count, Integer,  :default => 0
    
    def hit!
      adjust! :redirect_count => 1
    end
    
    # Finds or creates a domain, then increments the hit count
    def self.hit! host
      unless domain = get(host)
        domain = Domain.create!(:host => host)
      end
      domain.hit!
      domain
    end
  end
end