class Shoe < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates_presence_of :name
  before_save(:upcase_name)



  def upcase_name
   chars = self.name.split("")
   chars[0].upcase!
   self.name=chars.join("")
  end

end
