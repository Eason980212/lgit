class UserMailer < ActionMailer
	class UserMailer <ApplicationMailer
		default from: '1003772175@qq.com'
	def welcome_emali(user)
		@user = user
		@url = 'http://example.com/login'
		mail(to: @user.email, usbject: 'Welcome to My Awesome Site')
	end
end
