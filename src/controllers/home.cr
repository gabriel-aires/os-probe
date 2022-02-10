class Home < Application

  @title : String = App::NAME
  @description : String = App::DESC

  base "/"

  def index
    tone :random

    respond_with do
      html template("index.slang")
    end
  end

end
