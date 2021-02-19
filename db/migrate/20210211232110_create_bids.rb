class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.string :title
      t.integer :quote
      t.references :contract, null: false, foreign_key: true
      t.references :general_contractor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
