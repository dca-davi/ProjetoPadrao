require 'yaml'

class Configuration
  def self.[] key
    @@config[key]
  end

  def self.load name
    @@config = nil
    io = File.open( File.dirname(__FILE__) + "/../config.yml" )
    YAML::load_documents(io) { |doc| @@config = doc[name] }
    raise "Could not locate a configuration named \"#{name}\"" unless @@config
  end

  def self.[]= key, value
    @@config[key] = value
  end

end

raise "Please set the TEST_ENV environment variable" unless ENV['TEST_ENV']
Configuration.load(ENV['TEST_ENV'])

class StarAccess
  def self.[] key
    @@access[key]
  end

  def self.load name
    @@access = nil
    io = File.open( File.dirname(__FILE__) + "/../star_access.yml" )
    YAML::load_documents(io) { |doc| @@access = doc[name] }
    raise "Could not locate a configuration named \"#{name}\"" unless @@access
  end

  def self.[]= key, value
    @@access[key] = value
  end

end

raise "Please set the PERFIL environment variable" unless ENV['PERFIL']
StarAccess.load(ENV['PERFIL'])
