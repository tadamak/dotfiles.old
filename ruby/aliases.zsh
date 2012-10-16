alias erase-gems='for gem in `gem list | cut -d " " -f 1`; do yes | gem uninstall $gem -a; done'
alias be='bundle exec'
alias bil='bundle install --path vendor/bundle'
alias bila='bundle install --path vendor/bundle --disable-shared-gems'
alias sc='script/rails console'
alias sg='script/rails generate'
alias ss='script/rails server'
alias migrate='rake db:migrate'

