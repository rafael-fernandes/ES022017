require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it { should belong_to :series_list }
  it { should belong_to :series }
end
