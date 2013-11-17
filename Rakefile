# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'csv' 

HelpingScans::Application.load_tasks

task :load_app => :environment do
	names = ['Jim Samson', 'Tammy Orgega', 'Francis Smith']


	bios = ['Hello, when I was 18 years old, I served our country in vietnam. 
After the conflict I had very little assets to my name and no formal education. I found a job welding boilers for ships and worked there for 20 years. I was injured and eventually my compensation stopped after the ship yard went bankrupt. I have been homeless for many years surviving by the kindness of others. Many people chose not to donate telling me I would only buy booze. I have never had an alcohol problem, but now thanks to Helping scans people will know exactly where their donations are used. Thank you for your donation, God Bless America!',
'My name is Tammy and I have been addicted to crack since I was 14 years old. I ran away from my abusive family when I was 17. I lived at my dealers house for a while, but was arrested and went to prison for 5 years. I wanted to turn my life around but no one would hire a felon. Eventually I went back to my old ways and started using again. I am now 42 and live on the streets of st louis. Thanks to donators like you I have been seeing a substance abuse counselor and been clean for 5 months.',
'Greetings! I am Francis. I have been homeless since I lost my wife and house from hurricane Katrina. I moved north in search of work but still struggle to live day to day. Please donate. Any amount will help and I am currently saving for a winter coat.',]


	user_photos = [
		'http://cdn.breitbart.com/mediaserver/Breitbart/Big-Government/2013/06/04/WashingtonStateHomelessAP.jpg',
		'http://1.bp.blogspot.com/-o-HJgJ0yxKM/TzTct-YXTeI/AAAAAAAACew/X9RsypS3YMM/s1600/homeless.jpg',
		'http://equityblog.org/wp-content/uploads/2010/09/new-orleans-flag-wrapped-women-post-katrina.jpeg',
		'http://mnpprodpublic.s3.amazonaws.com/wp-content/uploads/2013/04/poverty-in-america-sign-crop-16x9.jpg',
		'http://farm5.staticflickr.com/4045/4219546653_3634c79aa4_z.jpg',
		'http://farm4.staticflickr.com/3159/2556774661_ee33582786_t.jpg',
		'http://farm4.staticflickr.com/3500/4058479700_330e980407_n.jpg',
	]
	Wish.all.delete_all

	users = User.all
	users.each do |x|
		if x.wish_list.nil?
			WishList.create(user: x)
		end
		x.update_attributes(			
			bio: bios.sample,
			name: names.sample,			
			pict_url: user_photos.sample,
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
