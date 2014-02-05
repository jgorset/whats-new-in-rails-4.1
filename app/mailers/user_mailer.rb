class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome user
    @user = user

    mail to: user.email
  end
end
