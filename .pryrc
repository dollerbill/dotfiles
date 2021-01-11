def self.methods(object)
  object.methods - Object.methods
end

def self.public_methods(object)
  object.public_methods - Object.public_methods
end

def self.private_methods(object)
  object.private_methods - Object.private_methods
end

# Enable shortcuts for byebug
Pry.commands.alias_command 'c', 'continue' rescue nil # resume normal execution
Pry.commands.alias_command 's', 'step' rescue nil     # step into next function call
Pry.commands.alias_command 'n', 'next' rescue nil     # execute next line
Pry.commands.alias_command 'f', 'finish' rescue nil   # execute until current stack frame returns

# Enable nice colors
Pry.config.color = true
Pry.config.theme = "tomorrow-night"

class String
  def console_cyan;   add_color(self, "\001\e[0;36m\002");  end
  def console_red;    add_color(self, "\001\e[0;31m\002");  end
  def console_yellow; add_color(self, "\001\e[0;33m\002");  end
  def console_purple; add_color(self, "\001\e[0;35m\002");  end

  def add_color(text, color_code)
    "#{color_code}#{text}\001\e[0m\002"
  end
end

# Set the prompt
Pry.config.prompt = Pry::Prompt.new(
  "custom",
  "my custom prompt",
  [
    proc { |obj, nest_level, pry| "#{File.basename(Dir.pwd).console_cyan}#{"|".console_red}(#{obj.to_s.console_purple}):#{pry.input_ring.size.to_s.console_yellow} #{"⇒".console_cyan} " },
    proc { |obj, nest_level, pry| "#{File.basename(Dir.pwd).console_cyan}#{"|".console_red}(#{obj.to_s.console_purple}):#{pry.input_ring.size.to_s.console_yellow} #{"*".console_red} " }
  ]
)

# Enable awesome_print
begin
  require 'awesome_print'
  AwesomePrint.pry!
  AwesomePrint.defaults={:theme=>:solorized}
  Pry.config.print = proc {|output, value| Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai}", output)}
rescue LoadError => err
  puts "no awesome_print :("
end

# Helpers
class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n,&block) : Array.new(n) {|i| i+1}
  end
end
class Hash
  def self.toy(n=10)
    Hash[Array.toy(n).zip(Array.toy(n){|c| (96+(c+1)).chr})]
  end
end

# Break out of binding.pry loops with `disable-pry`; this allows re-enabling pry
Pry::Commands.block_command('enable-pry', 'Enable `binding.pry` feature') do
  ENV['DISABLE_PRY'] = nil
end