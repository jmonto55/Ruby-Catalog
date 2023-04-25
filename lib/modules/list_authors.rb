module ListAuthors
  def list_all_authors
    puts 'Authors:'
    @data[0].each do |author|
      puts "#{author.first_name} #{author.last_name}"
    end
  end
end
