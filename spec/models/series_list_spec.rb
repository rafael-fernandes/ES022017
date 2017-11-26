require 'rails_helper'

RSpec.describe SeriesList, type: :model do
  it { should have_one :user }
  it { should have_many :series }
end
