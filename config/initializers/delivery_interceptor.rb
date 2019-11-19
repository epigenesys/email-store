# ActionMailer::Base.register_interceptor(DeliveryInterceptor) if Rails.env.qa? || Rails.env.demo?
ActionMailer::Base.register_interceptor(DeliveryInterceptor) if Rails.env.development?
