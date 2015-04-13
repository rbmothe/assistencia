class CreateCelulares < ActiveRecord::Migration
  def change
    create_table :celulares do |t|
      t.references :cliente, index: true, foreign_key: true
      t.string :imei
      t.string :marca
      t.string :numserie

      t.timestamps null: false
    end
  end
end
