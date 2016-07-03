app_root = "/home/ubuntu/deepblog"
app_name = "deepblog"
# Set the working application directory
# working_directory "/path/to/your/app"
working_directory app_root

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "#{app_root}/tmp/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "#{app_root}/log/unicorn.log"
stdout_path "#{app_root}/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.#{app_name}.sock" 