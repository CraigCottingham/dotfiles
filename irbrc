# load_irbrc method from http://samuelmullen.com/2010/04/irb-global-local-irbrc/
def load_irbrc(path)
  return if (path == ENV["HOME"]) || (path == '/')
  load_irbrc(File.dirname path)
  irbrc = File.join(path, ".irbrc")
  load irbrc if File.exists?(irbrc)
end

require 'irb/completion'
require 'pp'

begin
  require 'hirb'
  Hirb.enable
rescue Exception => e
  # Gracefully ignore problems loading Hirb
  puts "exception requiring and/or enabling Hirb: #{e}"
end

IRB.conf[:AUTO_INDENT] = true

# probably should be the last line in .irbrc
load_irbrc Dir.pwd # probably should stay at the bottom
