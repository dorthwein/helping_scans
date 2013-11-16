# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'csv' 

HelpingScans::Application.load_tasks

task :load_app => :environment do
	loripsum = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
	names = ['Jim Samson', 'Tammy Orgega', 'Francis Smith']
	Wish.all.delete_all

	users = User.all
	users.each do |x|
		if x.wish_list.nil?
			WishList.create(user: x)
		end
		x.update_attributes(
			bio: loripsum,
			name: names.sample,			
		)

		10.times do |y|
			Wish.create(
				wish_list: x.wish_list,
				retail_item: RetailItem.all.sample
			)
		end
	end
end

task :load_items => :environment do 
	total_rows = CSV.read("#{Rails.public_path}/items.csv").length	
	CSV.foreach( "#{Rails.public_path}/items.csv") do |row|	  	
		print row.to_s + "\n"
		item = RetailItem.find_or_create_by(
			number: row[0]
		)

		item.update_attributes(
  			price: row[1] ,
  			name: row[2] ,
  			description: row[3] ,
  			category: row[4] ,
  			url: row[5] ,
		)



	end
end
