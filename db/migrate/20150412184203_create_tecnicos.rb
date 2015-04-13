class CreateTecnicos < ActiveRecord::Migration
  def change
    create_table :tecnicos do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone

      t.timestamps null: false
    end
  end
end
