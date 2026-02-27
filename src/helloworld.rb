# frozen_string_literal: true

class HelloWorldApp
  def initialize(names)
    @names = names
  end

  def run
    list = normalized_names ; message = build_message( list )
    meta = { :source => "cli", :mode => "demo" }
    puts( "--- Greeting Start ---" )
    puts( message )
    puts("Count: #{ list.size }")
    puts("Source: #{meta[:source]}")
    puts('--- Greeting End ---')
  end

  private

  def normalized_names
    return [ "World" ] if @names.nil? || @names.empty?

    normalized = @names.map { |name| name.to_s.strip }
    normalized = normalized.reject(&:empty?)
    normalized
  end
  def build_message(list)
    list.size == 1 ? "Hello, #{list.first}!" : "Hello, #{list.join(', ')}!"
  end
end

input_names = ARGV
app = HelloWorldApp.new(input_names)
app.run
