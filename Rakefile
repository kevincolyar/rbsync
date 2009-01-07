require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('rbsync', '0.1.0') do |p|
  p.description = "Rsync wrapper to provide easy push and pull from the command line"
  p.url = ''
  p.author = 'Kevin Colyar'
  p.email = 'kevin@colyar.net'
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
