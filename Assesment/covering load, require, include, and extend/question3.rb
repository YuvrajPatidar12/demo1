class Formatter
  module Format
    def format_document(document)
      "Formatted: #{document}"
    end
  end
end

class Printer
  extend Formatter::Format
  def print_document(document)
    formatted_document = Printer.format_document(document)
    puts "Printing: #{formatted_document}"
  end
end

# Example usage
printer = Printer.new
printer.print_document("My Document")
