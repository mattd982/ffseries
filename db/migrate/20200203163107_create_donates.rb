class CreateDonates < ActiveRecord::Migration[5.2]
  def change
    create_table :donates do |t|
      t.decimal :amount
      t.timestamps
    end
  end
end
