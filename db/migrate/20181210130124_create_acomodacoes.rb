class CreateAcomodacoes < ActiveRecord::Migration[5.2]
  def change
    create_table :acomodacoes do |t|
      t.string :titulo
      t.text :descricao
      t.integer :capacidade
      t.decimal :preco
      t.integer :tipo
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
