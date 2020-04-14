class Region < ActiveRecord::Base
  has_many :locations

    # My Solution
  # def self.with_name(name)
  #   Region.where(name: name)
  # end

  # def self.order_by_name
  #   Region.all.order(:name)
  # end

end
