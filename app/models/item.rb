class Item < ActiveRecord::Base
  belongs_to :order
  belongs_to :food

  validates :amount, allow_blank: true, :numericality => { :greater_than_or_equal_to => 0 }

  before_create :set_price

  def set_price
    self.price = self.food.price
  end
end
