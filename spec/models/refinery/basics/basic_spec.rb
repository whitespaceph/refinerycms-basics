require 'spec_helper'

module Refinery
  module Basics
    describe Basic do
      describe "validations" do
        subject do
          FactoryGirl.create(:basic)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end
