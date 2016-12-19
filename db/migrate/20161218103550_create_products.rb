class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :code
      t.string :title_en
      t.string :title_ko
      t.date :released_on
      t.string :country
      t.integer :fscreen
      t.integer :preview
      t.integer :ani
      t.integer :naver
      t.integer :youtube
      t.integer :fweek
      t.float :expectation
      t.float :percent_error
      t.string :URL

      t.timestamps
    end
  end
end
