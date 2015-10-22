require 'rails_helper'

describe User do
  it { should validate_presence_of :name }
  it { should have_many :pictures }
  it { should have_many :posts }
  it { should have_many :tags }
end
