class MailingListSignupJob < ActiveJob::Base

  def perform(visitor)
    logger.info "signing up #{visitor.email}, BN was here!!"
    # visitor.subscribe
  end

end
