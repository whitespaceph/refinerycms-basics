module Refinery
  module Basics
    module Admin
      class BasicsController < ::Refinery::AdminController

        crudify :'refinery/basics/basic',
                :title_attribute => 'about_title',
                :xhr_paging => true

      end
    end
  end
end
