class HomeController < ApplicationController
  def index

  end
  
  def distance
    required = [:type, :distance]
    form_complete = true
    required.each do |f|
      if params.has_key? f and not params[f].blank?
        # that's good news. do nothing
      else
        form_complete = false
      end
      if form_complete
        form_status_msg = 'Thank you for your feedback!'
      else
        form_status_msg = 'Please fill in all the remaining form fields and resubmit.'
      end
      format.html { render :home, locals: { status_msg: form_status_msg } }
    end
  end

end