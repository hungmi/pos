class Order < ActiveRecord::Base
  has_many :items
  accepts_nested_attributes_for :items, :reject_if => lambda { |i| i[:amount].blank? }, :allow_destroy => true
end
