class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
  validates_presence_of :movie_id, :user_id
  validates :draft, :inclusion => { :in => [true, false] }

  validates :stars, :presence => true, 
    :numericality => {
      :greater_than_or_equal_to => 0,
      :less_than_or_equal_to => 5
    }, :unless => :draft?
  validates_presence_of :content, :unless => :draft?

  scope :published, -> { where(draft: false) }
end
