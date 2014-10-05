class AddNameToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :name, :string
    add_column :memberships, :phone, :string
    add_column :memberships, :description, :text
  end
end
