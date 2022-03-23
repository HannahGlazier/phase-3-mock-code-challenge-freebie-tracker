class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one(item_name) 
        # self.freebies.map do |freebie|
        #     self.freebie.item_name ? true : false
        # end
        # self.freebies.includes(:item_name).where('freebies.item_name = ?', "item_name")
        # use where??
        # existing_freebies = self.freebies.pluck(:item_name)
        # existing_freebies == item_name ? true : false
        # binding.pry
        # self.freebies.include?(item_name) ? true : false

        self.freebies.any? {|freebie| freebie.item_name == item_name}

        end

    def give_away(dev, freebie)
        if self.freebies.include?(freebie)
        Freebie.update(freebie.id, :dev => dev)

        else 
        Freebie.update(freebie.id, :dev => self)
        end
    end




end