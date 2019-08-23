class Application

    def call(env)
        resp = Rack::Response.new

        time = Time.now
        hour = time.hour

        num_1 = Kernel.rand(1..20)
        num_2 = Kernel.rand(1..20)
        num_3 = Kernel.rand(1..20)

        resp.write "#{num_1}\n"
        resp.write "#{num_2}\n"
        resp.write "#{num_3}\n"

        if hour > 12
        resp.write "Good Afternoon!"
        else
        resp.write "Good Morning!"
        end

        resp.finish
    end
end