class Developer < ActiveRecord::Base
    has_many :vgs
    has_many :customers, through: :vgs
    

    def self.most_popular_developer
        #by number of created games
        pop= self.all.max_by do |dev|
            dev.name == self
        end
        pop.name
    end

    
    def self.list_of_companies
        #returns list of all companies
        comp= self.all.map do |co|
            co.company
        end
        comp.uniq
    end


    def self.average_age_of_customers
        #average age of customers so developers know of Splashes audience
        ave= Customer.all.map do |cust|
            cust.age
        end
        ave.sum / ave.size
    end


    def self.dev_by_company(company)
        companies = self.all.select do |dev|
            dev.company == company
        end
     end  


    def self.games_by_company(company)
        #grab dev with matching company name
        devs = self.dev_by_company(company)
        #collect ids of those developers
        ids = devs.map do |dev|
            dev.id
        end
        #grab video games with matching dev ids
        match = VG.all.select do |vg|
            ids.include?(vg.developer_id)
        end
        #grab names of those video game instances
        names = match.map do |vg|
            vg.name
        end
        #git rid of repeat names (uniq)
        names.uniq
    end

    #pass ^^

end