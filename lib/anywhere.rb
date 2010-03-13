# A dirt simple app to track hits on non-canical domains
module Anywhere
  $LOAD_PATH.unshift File.dirname(__FILE__)
  
  autoload :Domain,         'anywhere/domain'
  autoload :Counter,        'anywhere/counter'
  autoload :Redirector,     'anywhere/redirector'
  autoload :Configuration,  'anywhere/configuration'
  
  def self.configuration
    @configuration ||= Configuration.new
  end
  
  # Configure from running ruby code or a configuration file
  def self.configure(path=default_configuration_path, &block)
    if block_given?
      yield configuration
    else
      begin
        # Makes configuration look prettier... refer to anywhere.attr instead of configuration.attr
        anywhere = configuration
        eval(File.read(path))
      rescue Errno::ENOENT => e
        raise Errno::ENOENT.new("#{path}. Run 'rake config' to generate a configuration file.")
      end
    end
    configuration
  end
  
private
  def self.default_configuration_path
    File.join(File.dirname(__FILE__), '../anywhere.config')
  end
end