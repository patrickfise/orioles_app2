require 'rails_helper'

RSpec.describe FanTeam, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:user) }

    it { should have_many(:games) }

    it { should belong_to(:team) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
