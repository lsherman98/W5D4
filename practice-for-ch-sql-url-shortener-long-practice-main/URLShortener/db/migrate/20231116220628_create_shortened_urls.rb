class CreateShortenedUrls < ActiveRecord::Migration[7.1]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, index: true # many can be given to elicit short_url, create index
      # create index and make sure its unique 
      t.string :short_url, index: { unique: true } # condensed version of long_url --> unique and no repeats allowed  
      t.integer :user_id # many users can input same or diff urls 
      t.timestamps
    end
  end
end
