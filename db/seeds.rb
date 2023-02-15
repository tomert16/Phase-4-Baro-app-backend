Bar.destroy_all
User.destroy_all
Review.destroy_all
BarCrawl.destroy_all
BarCrawlReview.destroy_all
CrawlEvent.destroy_all
CrawlEventComment.destroy_all
FriendshipTable.destroy_all
PendingInvite.destroy_all
UsersAtCrawlEvent.destroy_all

puts "🌱 Seeding bars..."
whitehorse = Bar.create(name: "White Horse Tavern", image: "https://cdn.usarestaurants.info/assets/uploads/ae536abefd984486112da4556c273945_-united-states-new-york-new-york-county-754702-the-white-horse-tavern-financial-districthtm.jpg",  category: "Tavern", price: "$", closing_time: "0200", location: "25 Bridge St, New York, NY 10004")
tavernreade = Bar.create(name: "Tavern On Reade", image: "https://tribecacitizen.com/wp-content/uploads/2021/11/Reade-Street-Pub.jpg",  category: "Tavern", price: "$$", closing_time: "0200", location: "59 Reade St, New York, NY 10007")
broadstone = Bar.create(name: "Broadstone Bar & Kitchen", image: "https://scottbrownrigg.b-cdn.net/media/4253/88-broad-street_0052.jpg",  category: "Pub", price: "$$", closing_time: "0100", location: "88 Broad St, New York, NY 10004")
rabbit = Bar.create(name: "The Dead Rabbit", image: "https://cdn.vox-cdn.com/thumbor/0Jtl39Ab1Bqn2vpYn44MPbIc-8U=/0x0:1000x750/1200x800/filters:focal(420x295:580x455)/cdn.vox-cdn.com/uploads/chorus_image/image/63360302/dead_rabbit.0.png",  category: "Pub", price: "$$", closing_time: "0300", location: "30 Water St, New York, NY 10004")
apotheke = Bar.create(name: "Apotheke Chinatown", image: "http://compassandtwine.com/wp-content/uploads/2015/08/image_1920.jpg",  category: "Cocktail Bar", price: "$$$", closing_time: "0200", location: "9 Doyers St, New York, NY 10013")
se = Bar.create(name: "Split Eights", image: "https://images.squarespace-cdn.com/content/v1/5f99d9f7d15295592f9644f8/1603919302629-OCJPOZLN60PD4C27W6ZJ/SplitEights_0220_LizClayman_145.jpg",  category: "Cocktail Bar", price: "$$$", closing_time: "0200", location: "40 Exchange Place Ground Floor, New York, NY 10005")
harry = Bar.create(name: "Harry's Side Bar", image: "https://s3.amazonaws.com/cuag/gallery_resources/000/036/602/original-978a7d3a8cdd2965b6bf7ccff1d751ee.jpg",  category: "Wine Bar", price: "$$$$", closing_time: "0100", location: "62 Stone St, New York, NY 10004")
ten = Bar.create(name: "The Ten Bells", image: "http://www.tenbellsnyc.com/mobile/images/slider/5.jpg",  category: "Wine Bar", price: "$$", closing_time: "0200", location: "247 Broome St, New York, NY 10002")
jeremy = Bar.create(name: "Jeremy's Ale House", image: "https://media.timeout.com/images/100416599/image.jpg",  category: "Dive Bar", price: "$", closing_time: "2300", location: "228 Front St, New York, NY 10038")
clock = Bar.create(name: "Clockwork Bar", image: "https://s3.amazonaws.com/nooklyn-pro/locationphotos/4120/standard/Clockwork_Bar-5.jpg",  category: "Dive Bar", price: "$", closing_time: "0400", location: "21 Essex St, New York, NY 10002")
story = Bar.create(name: "Overstory", image: "https://images.getbento.com/accounts/7d8edc296a1132884cb60967717c1311/media/images/7883521050_press_crownshy_7-22-212427.jpg",  category: "Hotel Bar", price: "$$$$", closing_time: "0000", location: "70 Pine St 64th Floor, New York, NY 10005")
ready = Bar.create(name: "The Ready Rooftop Bar", image: "https://media.timeout.com/images/105772937/750/422/image.jpg",  category: "Hotel Bar", price: "$$", closing_time: "2200", location: "112 E 11th St, New York, NY 10003")

puts "🌱 Seeding users..."
joey = User.create!(real_name: "Joey", username: "j-money", email: "joey@gmail.com", password: "joey123")
jason = User.create!(real_name: "Jason", username: "jay-son", email: "jason@gmail.com", password: "jason123")
tomer = User.create(real_name: "Tomer", username: "tt016", email: "tomer@gmail.com", password: "610tt")
kevin = User.create(real_name: "Kevin", username: "km022", email: "kevin@gmail.com", password: "220mk")
dan = User.create(real_name: "Daniel", username: "dy008", email: "dan@gmail.com", password: "800yd")
avi = User.create(real_name: "Avi", username: "ar029", email: "avi@gmail.com", password: "920ra")
adam = User.create(real_name: "Adam", username: "af017", email: "adam@gmail.com", password: "710fa")
james = User.create(real_name: "James", username: "jp028", email: "james@gmail.com", password: "820pj")
olivia = User.create(real_name: "Olivia", username: "or012", email: "olivia@gmail.com", password: "210ro")
vero = User.create(real_name: "Veronique", username: "vc004", email: "vero@gmail.com", password: "400cv")
sophia = User.create(real_name: "Sophia", username: "sb030", email: "sophia@gmail.com", password: "030bs")
diana = User.create(real_name: "Diana", username: "dp026", email: "diana@gmail.com", password: "620pd")

puts "🌱 Seeding reviews..."
Review.create(star_rating: 4.5, content: "blah blah bleh", bar_id: story.id, user_id: joey.id)
Review.create(star_rating: 3.0, content: "blah blah bleh", bar_id: apotheke.id, user_id: joey.id)
Review.create(star_rating: 3.5, content: "blah blah bleh", bar_id: clock.id, user_id: avi.id)
Review.create(star_rating: 5.0, content: "blah blah bleh", bar_id: se.id, user_id: joey.id)
Review.create(star_rating: 4.5, content: "The White Horse Tavern is a historic spot with a charming atmosphere. The food is solid, with a focus on American classics like burgers and sandwiches. The drinks menu is also impressive, offering a variety of beers, wines, and cocktails. Service is friendly and attentive. Highly recommended for those looking for a casual and cozy spot to grab a bite or a drink.", bar_id: whitehorse.id, user_id: adam.id)
Review.create(star_rating: 2.5, content: "blah blah bleh", bar_id: rabbit.id, user_id: adam.id)
Review.create(star_rating: 3.0, content: "blah blah bleh", bar_id: jeremy.id, user_id: adam.id)
Review.create(star_rating: 4.0, content: "blah blah bleh", bar_id: ten.id, user_id: vero.id)
Review.create(star_rating: 3.5, content: "I was extremely disappointed with my experience at Tavern on Reade. The food was mediocre at best, with bland flavors and subpar ingredients. The service was slow and unorganized, and the staff seemed uninterested in providing a good customer experience. The atmosphere was also unremarkable. I would not recommend this establishment, and will not be returning.", bar_id: tavernreade.id, user_id: vero.id)
Review.create(star_rating: 4.5, content: "blah blah bleh", bar_id: se.id, user_id: tomer.id)
Review.create(star_rating: 2.5, content: "blah blah bleh", bar_id: ten.id, user_id: jason.id)
Review.create(star_rating: 3.5, content: "blah blah bleh", bar_id: harry.id, user_id: kevin.id)
Review.create(star_rating: 4.0, content: "blah blah bleh", bar_id: harry.id, user_id: sophia.id)
Review.create(star_rating: 5.0, content: "blah blah bleh", bar_id: whitehorse.id, user_id: james.id)
Review.create(star_rating: 4.0, content: "blah blah bleh", bar_id: ready.id, user_id: james.id)
Review.create(star_rating: 4.0, content: "blah blah bleh", bar_id: jeremy.id, user_id: diana.id)
Review.create(star_rating: 5.0, content: "blah blah bleh", bar_id: whitehorse.id, user_id: joey.id)
Review.create(star_rating: 2.5, content: "blah blah bleh", bar_id: clock.id, user_id: kevin.id)
Review.create(star_rating: 3.5, content: "blah blah bleh", bar_id: story.id, user_id: jason.id)
Review.create(star_rating: 0.5, content: "blah blah bleh", bar_id: rabbit.id, user_id: sophia.id)
Review.create(star_rating: 3.5, content: "blah blah bleh", bar_id: broadstone.id, user_id: olivia.id)
Review.create(star_rating: 0.0, content: "blah blah bleh", bar_id: tavernreade.id, user_id: dan.id)

puts "🌱 Seeding bar crawls..."
mondayCrawl = BarCrawl.create(bar_crawl_name: "Monday Night Crawl", bar_crawl_bars_id: "1,4,3,6", user_id: olivia.id, public_private: true )
tuesdayCrawl = BarCrawl.create(bar_crawl_name: "Tuesday Night Crawl", bar_crawl_bars_id: "4,6,9,10", user_id: dan.id, public_private: true )
wednesdayCrawl = BarCrawl.create(bar_crawl_name: "Wednesday Night Crawl", bar_crawl_bars_id: "6,7,8", user_id: avi.id, public_private: true )
thursdayCrawl = BarCrawl.create(bar_crawl_name: "Thursday Night Crawl", bar_crawl_bars_id: "2,3,5", user_id: tomer.id, public_private: true )
fridayCrawl = BarCrawl.create(bar_crawl_name: "Friday Night Crawl", bar_crawl_bars_id: "1,10,11", user_id: diana.id, public_private: true )
saturdayCrawl = BarCrawl.create(bar_crawl_name: "Saturday Night Crawl", bar_crawl_bars_id: "8,5", user_id: joey.id, public_private: true )
sundayCrawl = BarCrawl.create(bar_crawl_name: "Sunday Night Crawl", bar_crawl_bars_id: "7,12", user_id: kevin.id, public_private: true )

puts "🌱 Seeding bar crawl reviews..."
BarCrawlReview.create(user_id: diana.id, bar_crawl_id: tuesdayCrawl.id, star_rating: 5, content: "very good")
BarCrawlReview.create(user_id: vero.id, bar_crawl_id: tuesdayCrawl.id, star_rating: 4, content: "pretty good")
BarCrawlReview.create(user_id: james.id, bar_crawl_id: mondayCrawl.id, star_rating: 5, content: "very good!")
BarCrawlReview.create(user_id: adam.id, bar_crawl_id: mondayCrawl.id, star_rating: 2, content: "ew")
BarCrawlReview.create(user_id: vero.id, bar_crawl_id: thursdayCrawl.id, star_rating: 3, content: "this crawl was kinda dumpy, but i had a good time anyway.")
BarCrawlReview.create(user_id: avi.id, bar_crawl_id: saturdayCrawl.id, star_rating: 2, content: "i can't believe anyone thought this would be fun.")
BarCrawlReview.create(user_id: olivia.id, bar_crawl_id: wednesdayCrawl.id, star_rating: 1, content: "worst. everywhere smelled and the other patrons were mean to me.")

puts "🌱 Seeding crawl events..."
projectParty = CrawlEvent.create(user_id: vero.id, bar_crawl_id: thursdayCrawl.id, message: "Post-project celebration!")
hangout = CrawlEvent.create(user_id: olivia.id, bar_crawl_id: saturdayCrawl.id, message: "let's hang out :)")
kevinsParty = CrawlEvent.create(user_id: avi.id, bar_crawl_id: mondayCrawl.id, message: "Kevin's Birthday Bash")
avisParty = CrawlEvent.create(user_id: kevin.id, bar_crawl_id: thursdayCrawl.id, message: "Avi's Birthday Bash")

puts "🌱 Seeding crawl event comments..."
CrawlEventComment.create(crawl_event_id: kevinsParty.id, user_id: vero.id, comment:"can't wait!")
CrawlEventComment.create(crawl_event_id: kevinsParty.id, user_id: olivia.id, comment:"so exciting")
CrawlEventComment.create(crawl_event_id: avisParty.id, user_id: adam.id, comment:"this is gonna be great")
CrawlEventComment.create(crawl_event_id: hangout.id, user_id: tomer.id, comment:"sounds chill")
CrawlEventComment.create(crawl_event_id: projectParty.id, user_id: dan.id, comment:"tgif")
CrawlEventComment.create(crawl_event_id: avisParty.id, user_id: james.id, comment:"WOOOH!!!")


puts "🌱 Seeding friendship tables..."
FriendshipTable.create(user_1_id: 2, user_2_id: 1, status: 0)
FriendshipTable.create(user_1_id: 2, user_2_id: 3, status: 1)
FriendshipTable.create(user_1_id: 2, user_2_id: 4, status: 1)
FriendshipTable.create(user_1_id: 2, user_2_id: 5, status: 0)
FriendshipTable.create(user_1_id: 2, user_2_id: 6, status: 0)
FriendshipTable.create(user_1_id: 3, user_2_id: 1, status: 1)
FriendshipTable.create(user_1_id: 3, user_2_id: 5, status: 1)
FriendshipTable.create(user_1_id: 4, user_2_id: 6, status: 1)
FriendshipTable.create(user_1_id: 5, user_2_id: 7, status: 1)

puts "🌱 Seeding pending invites..."
PendingInvite.create(user_id: 2, crawl_event_id: 1)
PendingInvite.create(user_id: 1, crawl_event_id: 1)
PendingInvite.create(user_id: 3, crawl_event_id: 1)
PendingInvite.create(user_id: 4, crawl_event_id: 1)
PendingInvite.create(user_id: 5, crawl_event_id: 1)
PendingInvite.create(user_id: 6, crawl_event_id: 1)
PendingInvite.create(user_id: 6, crawl_event_id: 2)
PendingInvite.create(user_id: 7, crawl_event_id: 2)
PendingInvite.create(user_id: 8, crawl_event_id: 2)
PendingInvite.create(user_id: 10, crawl_event_id: 2)
PendingInvite.create(user_id: 2, crawl_event_id: 3)
PendingInvite.create(user_id: 3, crawl_event_id: 3)
PendingInvite.create(user_id: 5, crawl_event_id: 3)
PendingInvite.create(user_id: 8, crawl_event_id: 3)
PendingInvite.create(user_id: 11, crawl_event_id: 3)
PendingInvite.create(user_id: 12, crawl_event_id: 3)

puts "🌱 Seeding users at crawl events..."
UsersAtCrawlEvent.create(user_id: 10, crawl_event_id:1)
UsersAtCrawlEvent.create(user_id: 9, crawl_event_id:1)
UsersAtCrawlEvent.create(user_id: 8, crawl_event_id:1)
UsersAtCrawlEvent.create(user_id: 3, crawl_event_id:2)
UsersAtCrawlEvent.create(user_id: 4, crawl_event_id:2)
UsersAtCrawlEvent.create(user_id: 5, crawl_event_id:2)
UsersAtCrawlEvent.create(user_id: 1, crawl_event_id:3)
UsersAtCrawlEvent.create(user_id: 4, crawl_event_id:3)
UsersAtCrawlEvent.create(user_id: 1, crawl_event_id:4)
UsersAtCrawlEvent.create(user_id: 2, crawl_event_id:4)
UsersAtCrawlEvent.create(user_id: 3, crawl_event_id:4)
UsersAtCrawlEvent.create(user_id: 6, crawl_event_id:4)