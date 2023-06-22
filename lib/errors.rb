
class CommandLineArgumentError < StandardError
  DEFAULT_MESSAGE = 'Expected 1 argument. Use -h argument for more info.'

  def initialize(msg = DEFAULT_MESSAGE)
    super
  end
end

class IndexError < StandardError
  DEFAULT_MESSAGE = 'Expected number between 1 and 64 (inclusive).'

  def initialize(msg = DEFAULT_MESSAGE)
    super
  end
end