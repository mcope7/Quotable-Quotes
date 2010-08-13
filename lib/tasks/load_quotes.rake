namespace :db do
  desc "Loads the quotes.txt file into the quotable database"
  task :load_quotes => :environment do

    File.open(File.join(File.dirname(__FILE__), '..', '..', 'public', 'quotes.txt')).each do |line|
      item = line.split(/\s{2,}/)
      item[1] = item[1].chomp if item[1]
      if (author = Person.find(:first, :conditions => ["name = ?", item[0]])).nil?
        author = Person.new(:name => item[0])
        author.save!
      end
      author.quotes.build(:text => item[1]).save!
    end
  end
end
