VG.destroy_all
Developer.destroy_all
Customer.destroy_all

#developers
kenzo = Developer.create(:name=> 'Kenzo Tsujimoto', :company=> 'Capcom', :location=> 'Tokyo, Japan')
yoshiki = Developer.create(:name=> 'Yoshiki Okamoto', :company=> 'Capcom', :location=> 'Tokyo, Japan')
emily = Developer.create(:name=> 'Emily Braman', :company=> 'Nintendo', :location=> 'Kyoto, Japan')
fusajiro = Developer.create(:name=> 'Fusajiro Yamauchi', :company=> 'Nintendo', :location=> 'Kyoto, Japan')
mario = Developer.create(:name=> 'Mario Bros', :company=> 'Nintendo', :location=> 'Kyoto, Japan')
luigi = Developer.create(:name=> 'Luigi Bros', :company=> 'Nintendo', :location=> 'Kyoto, Japan')
todd = Developer.create(:name=> 'Todd Howard', :company=> 'Bethesda', :location=> 'Maryland, USA')
ashley = Developer.create(:name=> 'Ashley Cheng', :company=> 'Bethesda', :location=> 'Maryland, USA')
alex = Developer.create(:name=> 'Alex Seropian', :company=> 'Bethesda', :location=> 'Maryland, USA')
seth = Developer.create(:name=> 'Seth Starr', :company=> 'Bungie', :location=> 'Illinois, USA')
pete = Developer.create(:name=> 'Pete Parsons', :company=> 'Bungie', :location=> 'Illinois, USA')
jason = Developer.create(:name=> 'Jason Jones', :company=> 'Bungie', :location=> 'Illinois, USA')

#customers
george= Customer.create(:name=> 'George Smith', :age=> 13, :location=> 'USA')
anna= Customer.create(:name=> 'Anna Kendrick', :age=> 24, :location=> 'USA')
larz= Customer.create(:name=> 'Larz Barro', :age=> 24, :location=> 'CANADA')
mary= Customer.create(:name=> 'Mary Mallard', :age=> 20, :location=> 'U.K.')
richard= Customer.create(:name=> 'Richard Hicks', :age=> 31, :location=> 'U.K')
sam= Customer.create(:name=> 'Sam Jerry', :age=> 99, :location=> 'JAPAN')
larry= Customer.create(:name=> 'Larry King', :age=> 10, :location=> 'JAPAN')
star= Customer.create(:name=> 'Star Jones', :age=> 10, :location=> 'CHINA')
harry= Customer.create(:name=> 'Harry Smith', :age=> 24, :location=> 'USA')
miller= Customer.create(:name=> 'Miller Smith', :age=> 36, :location=> 'USA')
lara= Customer.create(:name=> 'Lara Mallard', :age=> 15, :location=> 'U.K.')

#video games
kh3 = VG.create(:name=> 'Kingdom Hearts 3', :publishyear=> 2019, :genre=> 'Adventure', :platform=> 'Playstation 4', :ersb=> 'E', :developer_id=> kenzo.id, :customer_id=> george.id)
kh3_1 = VG.create(:name=> 'Kingdom Hearts 3', :publishyear=> 2019, :genre=> 'Adventure', :platform=> 'Playstation 4', :ersb=> 'E', :developer_id=> kenzo.id, :customer_id=> mary.id)
uncharted = VG.create(:name=> 'Uncharted 2', :publishyear=> 2008, :genre=> 'Action', :platform=> 'Playstation 3', :ersb=> 'T', :developer_id=> yoshiki.id, :customer_id=>george.id)
crash = VG.create(:name=> 'Crash Bandicoot', :publishyear=> 1995, :genre=> 'Adventure', :platform=> 'Playstation 1', :ersb=> 'E', :developer_id=> emily.id,:customer_id=> anna.id)
need = VG.create(:name=> 'Need for Speed', :publishyear=> 2007, :genre=> 'Racing', :platform=> 'Xbox 360', :ersb=> 'E', :developer_id=> fusajiro.id, :customer_id=>larz.id)
madden = VG.create(:name=> 'Madden', :publishyear=> 2012, :genre=> 'Sports', :platform=> 'Xbox One', :ersb=> 'E', :developer_id=> mario.id, :customer_id=>mary.id)
re = VG.create(:name=> 'Resident Evil', :publishyear=> 2012, :genre=> 'Action', :platform=> 'Playstation 3', :ersb=> 'M', :developer_id=> luigi.id, :customer_id=>richard.id)
gt = VG.create(:name=> 'Gran Turismo', :publishyear=> 2007, :genre=> 'Racing', :platform=> 'Playstation 3', :ersb=> 'T', :developer_id=> todd.id, :customer_id=>sam.id)
zelda = VG.create(:name=> 'The Legend of Zelda', :publishyear=> 1999, :genre=> 'Adventure', :platform=> 'Nintendo 64', :ersb=> 'E', :developer_id=> kenzo.id, :customer_id=>larry.id)
mk = VG.create(:name=> 'Mortal Kombat', :publishyear=> 1995, :genre=> 'Action', :platform=> 'Playstation 1', :ersb=> 'M', :developer_id=> ashley.id, :customer_id=>star.id)
rd = VG.create(:name=> 'Red Dead Redemption', :publishyear=> 2012, :genre=> 'Adventure', :platform=> 'PC', :ersb=> 'M', :developer_id=> alex.id, :customer_id=>harry.id)
fifa = VG.create(:name=> 'Fifa', :publishyear=> 2012, :genre=> 'Sports', :platform=> 'Xbox One', :ersb=> 'T', :developer_id=> seth.id, :customer_id=>miller.id)
ban = VG.create(:name=> 'Batman Arkham Night', :publishyear=> 2011, :genre=> 'Adventure', :platform=> 'PC', :ersb=> 'M', :developer_id=> pete.id, :customer_id=>lara.id)
splinter = VG.create(:name=> 'Splinter Cell', :publishyear=> 2010, :genre=> 'Action', :platform=> 'Playstation 2', :ersb=> 'M', :developer_id=> jason.id, :customer_id=>star.id)
mine = VG.create(:name=> 'Minecraft', :publishyear=> 2010, :genre=> 'Adventure', :platform=> 'PC', :ersb=> 'E', :developer_id=> kenzo.id, :customer_id=>george.id)

#user types in company
#want to see all video games by company
#(company)
#Dev= Developer.all.select |comp|
#comp.name = company
#vg.all.select |id|
#id.developer_id
#.map name

#grab dev with matching company name
#collect ids of those developers
#grab video games with matching dev ids
#grab names of those video game instances
#git rid of repeat names (uniq)