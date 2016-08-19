class HomeController < ApplicationController
  def index
    @names = Professor.all
  end
  
  def from_name
    @merong = params[:content]
    @name = Professor.all
    @name= Professor.where("name LIKE ?", "%#{@merong}%")
  end
  
  def search
    @nname = Professor.all
     
    @id = Professor.new(professor_id:params[:n_id])
     
  end

  def from_subject
    @mong = params[:content]
    @subject= Subject.where("sname LIKE ?", "%#{@mong}%")
  end
  
  def search2
    @ssubject = Subject.all
    @ssubject_p = Professor.all
    @idd = Subject.new(p_id:params[:n_id])
   
  end
  
  def from_snumber
    @jing = params[:content]
    @snumber = Subject.all
    @snumber = Subject.where("snumber LIKE ?", @jing)
  end
  def search3
    @sssubject = Subject.all
    @sssubject_p = Professor.all
    @iddd = Subject.new(p_id:params[:n_id])
   
  end
end
