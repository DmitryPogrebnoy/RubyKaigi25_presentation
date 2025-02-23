# Puma configuration file.
threads 5, 5
port        ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }
pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }
workers 2
preload_app!
plugin :tmp_restart
