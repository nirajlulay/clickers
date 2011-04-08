class ClickersController < ApplicationController
  
# GET /clickers
  
# GET /clickers.xml
  
def index
   
 @clickers = Clicker.all

   
 respond_to do |format|
      
format.html
 # index.html.erb
      
format.xml  { render :xml => @clickers }
    
end
  
end

  

def startpage   
@direct = Clicker.first.id
end   

# GET /clickers/1
  
# GET /clickers/1.xml
  def show
    
@clicker = Clicker.find(params[:id])

    
respond_to do |format|
      
format.html # show.html.erb
      
format.xml  { render :xml => @clicker+"yyyyy" }
   
 end
  
end

 
 
def exam  
@clicker = Clicker.find(params[:id]) 

 
end

  



def calculate
    
  clicker = Clicker.all

  @array = Array.new(clicker.count)   
  @no = clicker.count - 1   
  for j in 0..@no    
       @array[j] = Array.new(10)   
  end   
  i = 0   
  clicker.each do |click|   
     if   click.option1_count == nil   
           a1 = 0   
     else   
           a1 = click.option1_count    
     end    
     if   click.option2_count == nil   
           a2 = 0   
     else   
           a2 = click.option2_count    
     end    
     if   click.option3_count == nil   
           a3 = 0     
     else     
           a3 = click.option3_count   
     end     
     if click.option4_count == nil   
           a4 = 0     
     else     
           a4 = click.option4_count    
     end    
     a5 = a1+a2+a3+a4    
     if a5 == 0    
           @array[i][0] = @array[i][1] = @array[i][2] = @array[i][3] = 0    
     else     
           @array[i][0] = "%.1f" % ((Float(a1) / a5)* 100).round(1)   
           @array[i][1] = "%.1f" % ((Float(a2) / a5)* 100).round(1)    
           @array[i][2] = "%.1f" % ((Float(a3) / a5)* 100).round(1)     
           @array[i][3] = "%.1f" % ((Float(a4) / a5)* 100).round(1)     
     end    
     @array[i][4] = click.question_text    
     @array[i][5] = click.correct_option    
     @array[i][6] = a1    
     @array[i][7] = a2    
     @array[i][8] = a3    
     @array[i][9] = a4    
     i +=1    
  end    
end

    

# GET /clickers/new
 
 # GET /clickers/new.xml
  
def new
    @clicker = Clicker.new

   
 respond_to do |format|
     
 format.html # new.html.erb
      
format.xml  { render :xml => @clicker }
   
 end
  
end

 


 # GET /clickers/1/edit
 
def edit
    
	@clicker = Clicker.find(params[:id])
  
end

  
# POST /clickers
 
 # POST /clickers.xml
 
 def create
    @clicker = Clicker.new(params[:clicker])

   
 respond_to do |format|
      
if @clicker.save
       
 format.html { redirect_to(@clicker, :notice => 'clicker was successfully created.') }
      
  format.xml  { render :xml => @clicker, :status => :created, :location => @clicker }
     
 else
       
 format.html { render :action => "new" }
       
 format.xml  { render :xml => @clicker.errors, :status => :unprocessable_entity }
     
 end
    
end
 
 end

  
# PUT /clickers/1
  # PUT /clickers/1.xml
 
def update
   

  @clicker = Clicker.find(params[:id])

   
 if params[:exe]  
    respond_to do |format|
  
      if params[:exe]=='1'
          @clicker.option1_count=@clicker.option1_count+1
      elsif params[:exe]=='2'
          @clicker.option2_count=@clicker.option2_count+1 
      elsif params[:exe]=='3'
          @clicker.option3_count=@clicker.option3_count+1 
      else params[:exe]=='4'
          @clicker.option4_count=@clicker.option4_count+1
      end    
   @clicker.save    
   tmp=params[:id]    
   tmp=tmp.to_i+1    
   last=Clicker.last.id    

    if tmp <= last
      format.html { redirect_to("/"+tmp.to_s+"/exam") }
 
    else
      format.html { redirect_to("") }
 
    end
      
   end
    
else    
        respond_to do |format|
        if @clicker.update_attributes(params[:clicker])
       
             format.html { redirect_to(@clicker, :notice => 'clicker was successfully updated.') }
       
             format.xml  { head :ok }
     
        else
       
            format.html { render :action => "edit" }
      
            format.xml  { render :xml => @clicker.errors, :status => :unprocessable_entity }
   
        end   
        end  
end     
end    


# DELETE /clickers/1
  # DELETE /clickers/1.xml
  def destroy
   
 @clicker = Clicker.find(params[:id])
    
@clicker.destroy

   
 respond_to do |format|
     
 format.html { redirect_to(clickers_url) }
     
 format.xml  { head :ok }
    
end
  
end
   
end
