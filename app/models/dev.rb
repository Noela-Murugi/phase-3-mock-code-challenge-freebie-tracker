class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.find_by item_name: item_name ? return true : return false
    end
  end

  def give_away(dev, freebie)
     self.received_one? freebie.item_name
      freebie.dev = dev
  end
end
