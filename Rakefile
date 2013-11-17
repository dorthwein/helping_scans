# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'csv' 

HelpingScans::Application.load_tasks

task :load_app => :environment do
#	names = ['Jim Samson', 'Tammy Orgega', 'Francis Smith']
	first_names = ['Sophia', 'Emma', 'Olivia', 'Isabella', 'Ava', 'Lily', 'Zoe', 'Chloe', 'Mia', 'Madison', 'Emily', 'Ella', 'Madelyn', 'Abigail', 'Aubrey', 'Addison', 'Avery', 'Layla', 'Hailey', 'Amelia', 'Hannah', 'Charlotte', 'Kaitlyn', 'Harper', 'Kaylee', 'Sophie', 'Mackenzie', 'Peyton', 'Riley', 'Grace', 'Brooklyn', 'Sarah', 'Aaliyah', 'Anna', 'Arianna', 'Ellie', 'Natalie', 'Isabelle', 'Lillian', 'Evelyn', 'Elizabeth', 'Lyla', 'Lucy', 'Claire', 'Makayla', 'Kylie', 'Audrey', 'Maya', 'Leah', 'Aiden', 'Jackson', 'Ethan', 'Liam', 'Mason', 'Noah', 'Lucas', 'Jacob', 'Jayden', 'Jack', 'Logan', 'Ryan', 'Caleb', 'Benjamin', 'William', 'Michael', 'Alexander', 'Elijah', 'Matthew', 'Dylan', 'James', 'Owen', 'Connor', 'Brayden', 'Carter', 'Landon', 'Joshua', 'Luke', 'Daniel', 'Gabriel', 'Nicholas', 'Nathan', 'Oliver', 'Henry', 'Andrew', 'Gavin', 'Cameron', 'Eli', 'Max', 'Isaac', 'Evan', 'Samuel', 'Grayson', 'Tyler']
	last_names = ['SMITH', 'JOHNSON', 'WILLIAMS', 'BROWN', 'JONES', 'MILLER', 'DAVIS', 'GARCIA', 'RODRIGUEZ', 'WILSON', 'MARTINEZ', 'ANDERSON', 'TAYLOR', 'THOMAS', 'HERNANDEZ', 'MOORE', 'MARTIN', 'JACKSON', 'THOMPSON', 'WHITE', 'LOPEZ', 'LEE', 'GONZALEZ', 'HARRIS', 'CLARK', 'LEWIS', 'ROBINSON', 'WALKER', 'PEREZ', 'HALL', 'YOUNG', 'ALLEN', 'SANCHEZ', 'WRIGHT', 'KING', 'SCOTT', 'GREEN', 'BAKER', 'ADAMS', 'NELSON', 'HILL', 'RAMIREZ', 'CAMPBELL', 'MITCHELL', 'ROBERTS', 'CARTER', 'PHILLIPS', 'EVANS', 'TURNER', 'TORRES', 'PARKER', 'COLLINS', 'EDWARDS', 'STEWART', 'FLORES', 'MORRIS', 'NGUYEN', 'MURPHY', 'RIVERA', 'COOK', 'ROGERS']

	bios = ['Hello, when I was 18 years old, I served our country in vietnam. 
After the conflict I had very little assets to my name and no formal education. I found a job welding boilers for ships and worked there for 20 years. I was injured and eventually my compensation stopped after the ship yard went bankrupt. I have been homeless for many years surviving by the kindness of others. Many people chose not to donate telling me I would only buy booze. I have never had an alcohol problem, but now thanks to Helping scans people will know exactly where their donations are used. Thank you for your donation, God Bless America!',
'My name is Tammy and I have been addicted to crack since I was 14 years old. I ran away from my abusive family when I was 17. I lived at my dealers house for a while, but was arrested and went to prison for 5 years. I wanted to turn my life around but no one would hire a felon. Eventually I went back to my old ways and started using again. I am now 42 and live on the streets of st louis. Thanks to donators like you I have been seeing a substance abuse counselor and been clean for 5 months.',
'Greetings! I am Francis. I have been homeless since I lost my wife and house from hurricane Katrina. I moved north in search of work but still struggle to live day to day. Please donate. Any amount will help and I am currently saving for a winter coat.',]

	user_photos = ['http://www.unitedwayla.org/wp-content/uploads/2012/10/12-Faces-of-Homelessness-Art-Show-Oct-9-11-2012-004-920x690.jpg', 'http://invisibleones.files.wordpress.com/2013/02/1-homeless_guys_at_bbq.jpg', 'http://lovelezlie.files.wordpress.com/2013/10/o-michael-pharaoh-900.jpg?w=490&h=702', 'http://farm4.staticflickr.com/3644/3456284542_ce56c62487.jpg', 'http://farm4.staticflickr.com/3644/3456284542_ce56c62487.jpg', 'http://media.freeola.com/images/user-images/20869/img_0914m-website.jpg', 'http://thenypost.files.wordpress.com/2013/09/homeless.jpg', 'http://24.media.tumblr.com/0feb72967b6732c867d8435297493e09/tumblr_mnkc7cyqii1rh7p7co1_500.jpg', 'http://tommiele.files.wordpress.com/2010/03/homeless-man-john-kraintz-003.jpg?w=600', 'http://broadstreetministry.org/images/staff/elbert_brown.jpg', 'http://assets.nydailynews.com/polopoly_fs/1.1226929!/img/httpImage/image.jpg_gen/derivatives/landscape_635/timberlake25n-1-web.jpg', 'http://stopandbreathe.com/wp-content/uploads/2011/03/homeless-smile.jpg', 'http://farm3.static.flickr.com/2063/2193909706_43dd87a8b3.jpg', 'http://3.bp.blogspot.com/-RKkrRCYgsE4/UjZRpAZNK8I/AAAAAAAAAFE/I25HIp72NZE/s1600/Portrait-of-Homeless-Man-IMG_3825.jpeg', 'http://behance.vo.llnwd.net/profiles21/1185849/projects/4006789/940a7a168c9918b376dd6e387767a59c.jpg', 'http://pschousing.org/files/Dave.png']
	Wish.all.delete_all

	user_count = User.all.count
	if user_count.to_i < 30
		30.times do 
			user = User.create(:email => first_names.sample + '@' + last_names.sample + '.com', :password => 'password', :password_confirmation => 'password')		
		end
	end

	users = User.all
	users.each do |x|
		if x.wish_list.nil?
			WishList.create(user: x)
		end

		x.update_attributes(			
			bio: bios.sample,
			name: first_names.sample + ' ' + last_names.sample,
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
