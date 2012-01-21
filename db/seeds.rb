# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

def Hash.from_pairs_e(keys,values)
  hash = {}
  keys.size.times { |i| hash[ keys[i] ] = values[i] }
  hash
end

spirits = FasterCSV.read "db/spirits.csv"
columns = spirits[0]
spirits[1..-1].each do |spirit|
  Spirit.create(Hash.from_pairs_e(columns,spirit))
end



#csv_file = File.new("spirits.csv")
