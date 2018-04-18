class CreateAv1s < ActiveRecord::Migration
  def change
    create_table :av1s do |t|
      t.integer :matricula
      t.string :email1
      t.string :email2
      t.string :nome
      t.string :curso

      t.timestamps null: false
    end
  end
end
