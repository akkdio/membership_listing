class CreateMemberships2 < ActiveRecord::Migration
  def change
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
