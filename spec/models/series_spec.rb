require 'rails_helper'

RSpec.describe Series, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :year }

  it { should have_many :seasons }
end
