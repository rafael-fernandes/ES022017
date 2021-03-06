require 'rails_helper'

RSpec.describe Episode, type: :model do
  it { should belong_to :season }

  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_presence_of :release_date }
  it { should validate_presence_of :summary }

  it do
    should validate_numericality_of(:number).
      is_greater_than_or_equal_to(1)
  end
end
