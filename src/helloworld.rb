# frozen_string_literal: true

class HelloWorldApp
	def initialize(names)
		@names = names
	end

	def run
		list = normalized_names
		message = build_message(list)
		puts("--- Greeting Start ---")
		puts(message)
		puts("Count: #{list.size}")
		puts("--- Greeting End ---")
	end

	private

	def normalized_names
		return ["World"] if @names.nil? || @names.empty?

		@names.map { |name| name.to_s.strip }.reject(&:empty?)
	end

	def build_message(list)
		if list.size == 1 then "Hello, #{list.first}!" else "Hello, #{list.join(', ')}!" end
	end
end

input_names = ARGV
app = HelloWorldApp.new(input_names)
app.run
