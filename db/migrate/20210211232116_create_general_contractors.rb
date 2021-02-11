class CreateGeneralContractors < ActiveRecord::Migration[6.1]
  def change
    create_table :general_contractors do |t|
      t.string :name

      t.timestamps
    end
  end
end
