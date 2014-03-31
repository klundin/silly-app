class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :companyname
      t.string :companydesc
      t.integer :user_id

      t.timestamps
    end
  end
end
