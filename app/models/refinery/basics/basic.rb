module Refinery
  module Basics
    class Basic < Refinery::Core::BaseModel
      self.table_name = 'refinery_basics'

      attr_accessible :home_logo_id, :about_title, :about_description, :about_excerpt, :about_services_title, :about_services_list, :position, :title

      validates :about_title, :presence => true, :uniqueness => true

      belongs_to :home_logo, :class_name => '::Refinery::Image'
    end
  end
end
