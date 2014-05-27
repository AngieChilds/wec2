module WebinarsHelper
  
  def first_web(webinar)
    @webinars = Webinar.first
  end
  
end
