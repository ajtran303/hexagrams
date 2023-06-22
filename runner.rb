require 'awesome_print'

require_relative 'lib/hexagram_library.rb'
require_relative 'lib/errors.rb'
require_relative 'lib/monkey_patches.rb'


def help_message
  puts 'usage: $ ruby runner.rb [-h|-r|-a|NUMBER]'
  puts '-h        Display this message'
  puts '-r        Display random hexagram'
  puts '-a        Display all hexagrams'
  puts 'NUMBER    Display numbered hexagram (1-64)'
end

raise CommandLineArgumentError unless ARGV.length.one?

if ARGV.length.zero?
  help_message
  exit(0) 
end

if ARGV.first.integer?
  index = ARGV.first.to_i
  raise IndexError unless (1..64).include?(index)
  
  ap HexagramLibrary[index]
  exit(0)
end

case ARGV.first.downcase
when '-h'
  help_message
when '-r'
  ap HexagramLibrary.sample
when '-a'
  ap HexagramLibrary.hexagrams
else
  raise CommandLineArgumentError.new('Unknown argument.')
end