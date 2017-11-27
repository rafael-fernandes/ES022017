require 'rails_helper'

RSpec.describe Season, type: :model do
  it { should belong_to :series }
  
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }

  it do
    should validate_numericality_of(:number).
      is_greater_than_or_equal_to(1)
  end
end
