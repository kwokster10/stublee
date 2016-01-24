require 'rails_helper'

RSpec.describe Movie, :type => :model do
  it { should have_attached_file(:image) }
  it { should validate_attachment_content_type(:image).
    allowing('image/png', 'image/gif', 'image/tiff', 'image/jpeg').
    rejecting('text/plain', 'text/xml') }
end
