require_relative '../label'

module ListAllLabels
  def list_all_labels
    @data[1].each do |label|
      puts "#{label.title} #{label.color}"
    end
  end
end
