class Movie < ActiveRecord::Base
  belongs_to :director
  has_one :rating
  has_many :comments

  has_attached_file :image,
    :storage => :google_drive,
    :google_drive_credentials => '#{Rails.root}/config/google_drive.yml',
    :styles => {
      :thumbnail => '100x100#',
      :medium => '300x300#'
      },
    :google_drive_options => {
      :public_folder_id => '0BwzwT5UELV5TRmNhYjFwNGZmZk0',
      :default_image => 'admit_one',
      :path => proc { |style| '#{style}_#{id}_#{image.original_filename}' }
    }
end
