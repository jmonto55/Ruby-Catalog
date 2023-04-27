require_relative '../label'

require 'set'

module ListAllLabels
  def list_all_labels
    labels = Set.new
    @books.each do |book|
      labels << book.label
    end

    return puts "\nNo label" if labels.empty?

    puts 'Labels: '
    labels.each do |label|
      puts "- Title: #{label.title} , Color: #{label.color}"
    end
  end
end
