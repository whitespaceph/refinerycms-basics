class CreateBasicsBasics < ActiveRecord::Migration

  def up
    create_table :refinery_basics do |t|
      t.integer :home_logo_id
      t.text :about_title
      t.text :about_description
      t.text :about_excerpt
      t.text :about_services_title
      t.text :about_services_list
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-basics"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/basics/basics"})
    end

    drop_table :refinery_basics

  end

end
