class ApplicationController < ActionController::Base
    def hello
        render html: "this is sample_app"
    end
end
