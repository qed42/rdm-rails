class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :comments


  validates_presence_of :title, :body, :user, :category

  def created_at
    read_attribute(:created_at).strftime("%b %d, %Y %I:%M %P") unless self.new_record?
  end

end
