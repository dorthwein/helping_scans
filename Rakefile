# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'csv' 

HelpingScans::Application.load_tasks

task :load_app => :environment do
#	names = ['Jim Samson', 'Tammy Orgega', 'Francis Smith']
	first_names = ['Sophia', 'Emma', 'Olivia', 'Isabella', 'Ava', 'Lily', 'Zoe', 'Chloe', 'Mia', 'Madison', 'Emily', 'Ella', 'Madelyn', 'Abigail', 'Aubrey', 'Addison', 'Avery', 'Layla', 'Hailey', 'Amelia', 'Hannah', 'Charlotte', 'Kaitlyn', 'Harper', 'Kaylee', 'Sophie', 'Mackenzie', 'Peyton', 'Riley', 'Grace', 'Brooklyn', 'Sarah', 'Aaliyah', 'Anna', 'Arianna', 'Ellie', 'Natalie', 'Isabelle', 'Lillian', 'Evelyn', 'Elizabeth', 'Lyla', 'Lucy', 'Claire', 'Makayla', 'Kylie', 'Audrey', 'Maya', 'Leah', 'Aiden', 'Jackson', 'Ethan', 'Liam', 'Mason', 'Noah', 'Lucas', 'Jacob', 'Jayden', 'Jack', 'Logan', 'Ryan', 'Caleb', 'Benjamin', 'William', 'Michael', 'Alexander', 'Elijah', 'Matthew', 'Dylan', 'James', 'Owen', 'Connor', 'Brayden', 'Carter', 'Landon', 'Joshua', 'Luke', 'Daniel', 'Gabriel', 'Nicholas', 'Nathan', 'Oliver', 'Henry', 'Andrew', 'Gavin', 'Cameron', 'Eli', 'Max', 'Isaac', 'Evan', 'Samuel', 'Grayson', 'Tyler']
	last_names = ['SMITH', 'JOHNSON', 'WILLIAMS', 'BROWN', 'JONES', 'MILLER', 'DAVIS', 'GARCIA', 'RODRIGUEZ', 'WILSON', 'MARTINEZ', 'ANDERSON', 'TAYLOR', 'THOMAS', 'HERNANDEZ', 'MOORE', 'MARTIN', 'JACKSON', 'THOMPSON', 'WHITE', 'LOPEZ', 'LEE', 'GONZALEZ', 'HARRIS', 'CLARK', 'LEWIS', 'ROBINSON', 'WALKER', 'PEREZ', 'HALL', 'YOUNG', 'ALLEN', 'SANCHEZ', 'WRIGHT', 'KING', 'SCOTT', 'GREEN', 'BAKER', 'ADAMS', 'NELSON', 'HILL', 'RAMIREZ', 'CAMPBELL', 'MITCHELL', 'ROBERTS', 'CARTER', 'PHILLIPS', 'EVANS', 'TURNER', 'TORRES', 'PARKER', 'COLLINS', 'EDWARDS', 'STEWART', 'FLORES', 'MORRIS', 'NGUYEN', 'MURPHY', 'RIVERA', 'COOK', 'ROGERS']

	bios = ["I lost my wife 5 years ago to cancer and without obamacare I had no way of paying her bills I declared bankruptcy and lost my house. 
I have been living under kingshighway bridge for 5 years. I love it here, but I can't always find food. Any donations will help.",

"I have been living outdoors for 7 years.The government put mind control devices in all my houses so I had to get out of there. I dont have a job because I don't have a house. I'd like to build a cabin in the woods of appalachia. I am saving up for all the saws and drills I need to build the house myself. Thanks for your help. Semper Fi!",

"If you donate I'll draw you a picture. I was an artist and choose to live through the kindness of others. Scan my code and donate today. I can draw anything, If you have time to sit down I'll draw you! I enjoy smiling and making people smile. Anything you can give will help me eat and get more art supplies.",

"I need to make it to woodstock! help me out brother. I need a bus pass to make it there, but also on the way there I'll need money to eat. Thank you so much for your help. If you donate more than 20 dollars I will bring you back a tie-dye tshirt. I got email. Thanks.",

"My family abandoned me when I was 25 after crashing our car when I was on meth, i have since then been moving town to town meeting new people and helping others with their addictions. Dont Meth around! All donations will go to food for me and others as well as rehab medication for others.",

"HI, I hurt my back being hit a drunk driver. due to all my medical bills Ive been homeless and addicted to pills for 5 years. I'm doing ok, but need your help. THANK YOU! Now thanks for HelpingScans Its easier for people to help me out.",

"I have been living on the streets for a few months now. I ran out of money spending my cash on drugs. I have been sober for a few months now. I want to start a smoothie shop some day since I lost all my teeth. My favorite flavor is blueberry pineapple. Whats yours? Your donation will help me pursue my dream. Thank you.",

"I am a divorced alcoholic father, but thanks to helping scans, I have stopped slamming 25oz cans of bud every time I get three dollars. Helpingscans saved my life from going down the drain even further. They even helped me enroll in AA. Any amount you can spare will help me help others. Thank you have a great day!",

"I have schizophrenia and have trouble figuring out who is real. I haven't been able to keep a job more than a month. If you can donate 5 dollars i can eat for another 2 days. I also need money for my medication as well. Thank you.",

"You think you got what it takes to take me down? Give me 20 dollars and I'll let you punch me. I wont feel it, yu are week. Either way I always need food and shelter and transportation. All donations will go to my church where I teach sunday school in exchange for some meals. Help me out and punch my hunger away.",

"If I can guess your name given the first letter within three times give me $5, if I can not do this I will give you a carved wooden figurine I whittled. I'm on the corner of 6th and olive every monday through saturday. See ya there!",

"When I was 18 years old, I served our country in vietnam. After the conflict I had very little assets to my name and no formal education. I found a job welding boilers for ships and worked there for 20 years. I was injured and eventually my compensation stopped after the shipyard went bankrupt. I have been homeless for many years surviving by the kindness of others. Many people chose not to donate telling me I would only buy booze. I have never had an alcohol problem, but now thanks to Helping scans people will know exactly where their donations are used. Thank you for your donation, God Bless America!",

"I have been addicted to crack since I was 14 years old. I ran away from my abusive family when I was 17. I lived at my dealers house for a while, but was arrested and went to prison for 5 years. I wanted to turn my life around but no one would hire a felon. Eventually I went back to my old ways and started using again. I am now 34 and live on the streets of st louis. Thanks to donators like you I have been seeing a substance abuse counselor and been clean for 5 months.",

"Greetings! I have been homeless since I lost my wife and house from hurricane Katrina. I moved north in search of work but still struggle to live day to day. Please donate. Any amount will help and I am currently saving for a winter coat.  I was in the traveling circus for 15 years, but got my legs crushed by Large Marge the elephant. the circus couldnt wait for me to heal and left me here one year ago. They'll be back in a few months, but i need help until then, any thing will help. I can juggle and eat fire. I am great at birthdays and bar mitzvahs, donate and email me to set up appointments, Im available ANYTIME, Im homeless. Thanks"]

#	bios = ['Hello, when I was 18 years old, I served our country in vietnam. 
#After the conflict I had very little assets to my name and no formal education. I found a job welding boilers for ships and worked there for 20 years. I was injured and eventually my compensation stopped after the ship yard went bankrupt. I have been homeless for many years surviving by the kindness of others. Many people chose not to donate telling me I would only buy booze. I have never had an alcohol problem, but now thanks to Helping scans people will know exactly where their donations are used. Thank you for your donation, God Bless America!',
#'My name is Tammy and I have been addicted to crack since I was 14 years old. I ran away from my abusive family when I was 17. I lived at my dealers house for a while, but was arrested and went to prison for 5 years. I wanted to turn my life around but no one would hire a felon. Eventually I went back to my old ways and started using again. I am now 42 and live on the streets of st louis. Thanks to donators like you I have been seeing a substance abuse counselor and been clean for 5 months.',
#'Greetings! I am Francis. I have been homeless since I lost my wife and house from hurricane Katrina. I moved north in search of work but still struggle to live day to day. Please donate. Any amount will help and I am currently saving for a winter coat.',]

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
			name: first_names.sample.titleize + ' ' + last_names.sample.titleize,
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
