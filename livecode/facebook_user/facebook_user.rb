class FacebookUser

attr_writer :name, :birthday

  def initialize(email, password)
    @name = ""
    @profilepic = ""
    @email = email
    @password = password
    @friends = []
    @birthday = nil
  end

  def add_friend!(other_user)
    unless friends_with?(other_user)
      @friends << other_user
      other_user.add_friend!(self)
    end
  end

  def friends_with?(user)
    @friends.include?(user)
  end

  def age
    return (Date.today - @birthday).to_i / 365
  end
  def change_password!(old_password, new_password)
    if old_password == @password
      @password = new_password
      return "Votre password a été mis à jour"
    else
      return "T'es un boulet, hein"
    end
  end
end
