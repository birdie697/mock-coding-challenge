class CreateContributors < ActiveRecord::Migration[5.2]
  def change
    create_table :contributors do |t|
      t.string :name, null: false
      t.belongs_to :repo
      t.timestamps
    end
  end
end
