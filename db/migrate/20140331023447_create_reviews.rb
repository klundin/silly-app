class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :qualitydimension
      t.string :reviewtext
      t.integer :rating
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end
  end
end
