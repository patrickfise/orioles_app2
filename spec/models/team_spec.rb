require 'rails_helper'

RSpec.describe Team, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:fan_teams) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
