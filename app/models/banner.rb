class Banner < ActiveRecord::Base
  acts_as_list
  has_attached_file :image, :styles => {:thumb => "100x100>" }
  default_scope :order => "position"

  scope :visible, where(:visible => true)
end
