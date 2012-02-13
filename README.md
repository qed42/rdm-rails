# How to set up

* Install rvm first    
  Run in terminal

        $ bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )    
        $ echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile    
        $ source ~/.bashrc     
        $ rvm install ruby-1.9.2-p290    
        $ rvm gemset create r3blog     

* Clone the repo and set up the blog    
  Run in terminal

        $ git clone git://github.com/madhums/r3tod7.git blog    
        $ cd blog    
        $ gem install bundler    
        $ bundle install    
        $ cp config/database.example.yml config/database.yml // provide your db username password in database.yml    
        $ rake db:create    
        $ rake db:migrate    
        $ rails server    

Now go to localhost:3000 
