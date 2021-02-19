class CreateSubBids < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_bids do |t|
      t.string :title
      t.integer :quote
      t.references :sub_contract, null: false, foreign_key: true
      t.references :subcontractor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
