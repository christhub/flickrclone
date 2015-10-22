require 'rails_helper'

describe Tag do
  it { should validate_presence_of :name }
  it { should have_and_belong_to_many :posts }
  it { should have_and_belong_to_many :pictures }
  it { should belong_to :user }
end
