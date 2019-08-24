class Application

  def call(env)
    resp = Rack::Response.new
    time = [12,11]
      time.each do |t|
      
      # current_time = Time.new
      # resp.write current_time.hour 
      if t < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end 
    end # ends do loop
      resp.finish
  end
end
