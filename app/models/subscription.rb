class Subscription < ApplicationRecord

    def self.send_daily
        subs = Subscription.where(time: 'daily')
        subs.each do |sub|
            DailyMailingJob.perform_later(sub.email)
        end
    end

    def self.send_weekly
        subs = Subscription.where(time: 'weekly')
        subs.each do |sub|
            DailyMailingJob.perform_later(sub.email)
        end
    end

end
