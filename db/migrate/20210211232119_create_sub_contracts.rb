class CreateSubContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_contracts do |t|
      t.string :title
      t.string :terms
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
