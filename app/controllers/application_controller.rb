class ApplicationController < ActionController::Base
    def check_author_role!
        redirect_to root_url, notice: "Nie masz dostepu" unless current_user.author
    end

end
