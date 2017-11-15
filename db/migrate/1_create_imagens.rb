class CreateImagens < ActiveRecord::Migration[5.0]
  def change
    create_table :imagens do |t|
      t.string :presente
      t.string :url
      t.string :nome
      t.timestamps
    end
  end
end
