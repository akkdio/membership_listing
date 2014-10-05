class DropMemberships < ActiveRecord::Migration
  
  def change
    drop_table :memberships
  end
  
  def up
    create_table :memberships do |t|
      t.string :company_name
      t.string :name 
      t.string :phone
      t.text   :description
      t.string :website

      t.timestamps
  
    end  
  
  end
  
end
