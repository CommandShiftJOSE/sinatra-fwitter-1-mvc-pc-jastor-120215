class Tweet
 
  ALL_TWEETS = []
  attr_accessor :username, :status
 
  def initialize(username, status)
    @username = username
    @status = status
  end
 
  def self.all
    ALL_TWEETS
  end
 
end