class Song < ActiveRecord::Base
  attr_accessible :artist, :file, :name

  def as_json(options={})
    opts = options.deep_merge({:except =>[:created_at, :updated_at]})
    super(opts)
  end
end
