class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    phrase = self.catchphrase
    "#{self.name} always says: #{phrase}"
  end

end