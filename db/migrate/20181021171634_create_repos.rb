class CreateRepos < ActiveRecord::Migration[5.2]
  def change
    create_table :repos do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :language
      t.timestamps
    end
  end
end
