class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    return false unless @password.length.between?(6, 24)

    return false unless @password =~ /[A-Z]/
    return false unless @password =~ /[a-z]/
    return false unless @password =~ /\d/
    return false unless @password =~ /[!@#$%&*+=:;?<>\[\]{}()|\/^~`.-]/

    return false if @password =~ /(.)\1{2,}/

    true
  end
end
