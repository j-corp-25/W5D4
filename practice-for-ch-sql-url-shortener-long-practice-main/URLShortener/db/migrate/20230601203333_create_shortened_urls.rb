class CreateShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :short_url, null: false, index: {unique: true}
      t.string :long_url, null: false

      t.timestamps
    end
  end
end
