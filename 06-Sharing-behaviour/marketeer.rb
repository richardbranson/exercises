
class Marketer < Employee
  def initialize(first_name, last_name="Fooh", twitter_username="acme")
    super(first_name, last_name)
    @twitter_username = twitter_username
  end

  def contact
    @twitter_username
  end
end

