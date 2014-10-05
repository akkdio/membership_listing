class Membership < ActiveRecord::Base
  
   #attr_accessible :company_name, :website, :category_id
   
   belongs_to :category
   
  def self.import(file)
   
    CSV.foreach(file.path, encoding: "iso-8859-1:UTF", headers: true) do |row|
      membership = find_by_id(row["id"]) || new
      membership.attributes = row.to_hash.slice(*Membership.attribute_names())
      membership.save!
    end
  end
  
  def self.to_csv(options = {})
     CSV.generate(options) do |csv|
       csv << column_names
       all.each do |membership|
         csv << membership.attributes.values_at(*column_names)
       end
     end
   end
end
