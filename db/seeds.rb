# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Project.create :name => "Pembangunan menara Telkomsel" , :position => 1
Project.create :name => "Strategy go live HEOS timur" , :position => 2
Project.create :name => "Pembangunan smelter di Ekor" , :position => 3


willy = User.create :email => "w.yunnal@gmail.com", :password => "willy1234", :password_confirmation => "willy1234"
willy.name = "Willy Yunnal"
willy.save
dirman = User.create :email => "s.utomo@gmail.com", :password => "sutomo1234", :password_confirmation => "sutomo1234"
dirman.name = "Sudirman Utomo"
dirman.save
denny = User.create :email => "denny@gmail.com", :password => "denny1234", :password_confirmation => "denny1234"
denny.name = "Denny Wahyono"
denny.save