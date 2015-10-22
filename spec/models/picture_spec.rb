require 'rails_helper'

describe Picture do
  it { should validate_presence_of :caption }
  it { should belong_to :user }
  it { should belong_to :post }
  it { should have_and_belong_to_many :tags }
end
