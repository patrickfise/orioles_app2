require 'rails_helper'

RSpec.describe Game, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:opponent_team) }

    it { should belong_to(:fanteam) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
