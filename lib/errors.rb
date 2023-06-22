
class CommandLineArgumentError < StandardError
  DEFAULT_MESSAGE = 'Expected 1 argument.'
  USE_HELP_STRING = ' Use -h argument for more info.'

  def initialize(msg='')
    msg = if msg == ''
      DEFAULT_MESSAGE + USE_HELP_STRING
    else
      msg + USE_HELP_STRING
    end

    super(msg)
  end
end

class IndexError < StandardError
  DEFAULT_MESSAGE = 'Expected number between 1 and 64 (inclusive).'

  def initialize(msg = DEFAULT_MESSAGE)
    super
  end
end