require 'rails_helper'

describe Post do
  it { should validate_presence_of :content }
  it { should validate_presence_of :name }
  it { should have_and_belong_to_many :tags }
  it { should belong_to :user }
  it { should have_many :pictures }
end
