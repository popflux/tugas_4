class Tosmic < ActiveRecord::Base
  acts_as_votable
  belongs_to :user

  has_attached_file :image, :styles => { :medium => "200x100^"  },
                    :url => "/image/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/image/:id/:style/:basename.:extension"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :image, :less_than => 200.kilobytes
end
