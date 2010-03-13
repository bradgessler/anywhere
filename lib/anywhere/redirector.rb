module Anywhere
  Redirector = Proc.new{|env|
    location = Anywhere.configuration.redirect_to
    status   = Anywhere.configuration.redirect_status
    
    [ status, {"Content-Type" => "text/plain", "Location" => location}, "Redirecting to #{location}...\n" ]
  }
end