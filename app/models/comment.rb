class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  def time_finder(time)
    raw_time = Time.now - time
    raw_time.to_i
  end

end
