require_relative 'hexagrams.rb'

class HexagramLibrary
  include Hexagrams

  def self.[](index)
    HEXAGRAMS.find do |hexagram|
      hexagram[:number] == index
    end
  end

  def self.hexagrams
    HEXAGRAMS
  end

  def self.sample
    HEXAGRAMS.sample
  end
end