class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people

  def self.in_region(region)
    # My Solution
    # joins(:region).merge( Region.with_name(region) )
    joins(:region).where(regions: { name: region })
  end


    # My Solution
  # def self.order_by_name
  #   joins(:region).merge( Region.order_by_name ).order(:name)
  # end

end
