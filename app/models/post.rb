class Post
  include Mongoid::Document
  field :title, :type => String
  field :content, :type => String
  field :tags, :type => Array, :default => []
  field :created_at, :type => Time, :default => Time.now
  field :updated_at, :type => Time, :default => Time.now
  
  def tags=(arg)
    if arg.is_a?(String) then
      arg = arg.split(",").map{ |item| item.strip.downcase }
    end
    super(arg)
  end
end
