class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :company_name
      t.string :website

      t.timestamps
    end
  end
end
