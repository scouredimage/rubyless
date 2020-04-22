require 'json'
require 'fortune_gem'

def fortune(event:, context:)
  {
    statusCode: 200,
    body: {
      message: FortuneGem.give_fortune(),
      input: event
    }.to_json
  }
end
