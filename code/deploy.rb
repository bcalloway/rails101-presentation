set :repository,  "git@github.com:scullygroup/acm-design.git"

set :user, 'acmdesign'
set :domain, 'scalise.dreamhost.com'
set :project, 'acm'
set :application, 'acmdesign.net'
set :applicationdir, "/home/#{user}/#{application}"

set :deploy_to, applicationdir

role :app, domain
role :web, domain
role :db,  domain, :primary => true