class Developer < ActiveRecord::Base
    has_many :vgs
    has_many :customers, through: :vgs
    

    def self.most_popular_developer
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
        ave= Customer.all.map do |cust|
            cust.age
        end
        ave.sum / ave.size
    end


    def self.dev_by_company(company)
        companies = self.all.select do |dev|
            dev.company == company
        end
        companies
     end  

#pass ^^

    def self.games_by_company(company)
        developer = VG.all.map do |dev|
            dev.developer_id
        end
        developer
        binding.pry
    end


    def most_popular_company

    end

end
