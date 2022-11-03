class List < ApplicationRecord

    def self.search(query)
        list = List.where("country like ?", "%" + query + "%")
        if list
            list
        else
            List.all
        end
    end

    def self.filter_two(query1,query2)
        List.where(region: query1, income_level:query2)
    end

    def self.filter_income(query)
        List.where(income_level: query)
    end

    def self.filter_region(query)
        List.where(region: query)
    end
end
