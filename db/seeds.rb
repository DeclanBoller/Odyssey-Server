User.destroy_all
u1 = User.create :name => 'Declan Boller', :email => 'test@testmail.com', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :name => 'Steve Jobs', :email => 'youshouldhiredeclan@hirehim.com', :password => 'hiremepls', :password_confirmation => 'hiremepls'
# u3 = User.create :name => 'Johnny Knoxville', :email => 'knoxville@hotmail.com', :password => 'welcometojackass'
# u4 = User.create :name => 'DPR', :email => 'dreadpirateroberts@silkroad.com', :password => 'chicken'
# u5 = User.create :name => 'Poppy Batts', :email => 'plbtxs@outlook.com', :password => 'justanotherpassword'

Trip.destroy_all 
t1 = Trip.create :origin => 'Sydney', :destination => 'Melbourne'

Stop.destroy_all
s1 = Stop.create :location => 'Albury', :stop_info => ['Stop Into Duncans Place', 'Spend Time with Abby', 'Visit Bridget']

# Associations Users to Trips
u1.trips << t1

# Associations Trips to Stops
t1.stops << s1