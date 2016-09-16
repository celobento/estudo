class CreateStatusConteudos < ActiveRecord::Migration
  def change
    create_table :status_conteudos do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
