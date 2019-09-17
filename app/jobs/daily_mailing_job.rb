class DailyMailingJob < ApplicationJob
  queue_as :default

  def perform(email)
    puts "--->>> Sending daily mail"
    UserMailer.daily_email(email).deliver_now
    #DailyMailingJob.set(wait: 15.seconds).perform_later
  end
end
