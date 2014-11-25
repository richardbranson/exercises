class Manager < Employee

  def initialize(first_name, last_name, title, email)
    super(first_name, last_name)
    @title = title
    @email = email
  end

  def full_name
    "#{@first_name} #{@last_name} #{@title}"
  end

  def contact
    @email
  end

end


