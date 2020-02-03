class AddDietsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :diets do |t|
      t.column :diet_type, :string
      t.column :nutrition, :text
      t.column :enviromental_impact, :text
    end
  end
end
