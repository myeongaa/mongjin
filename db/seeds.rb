# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'roo'

xlsx = Roo::Excelx.new("./professor.xlsx")
input = xlsx.parse(name:"name",email:"email",phone:"phone",bel:"bel")
input.each_with_index do |item,index|
 next if index == 0
 Professor.create(item)
end

xlsx2 = Roo::Excelx.new("./subject.xlsx")
input2 = xlsx2.parse(sname:"sname",snumber:"snumber")
input2.each_with_index do |item2,index2|
 next if index2 == 0
 Subject.create(item2)
end
