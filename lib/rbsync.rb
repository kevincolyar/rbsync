class Rbsync

  def initialize
    read_config
  end

  def read_config
    yaml = YAML::load(File.open(File.expand_path('~/.rbsync'))) 
    @rsync_args = yaml['rsync'] || ''
    @mappings = yaml['mappings'] || {}
  end

  def map_path(path)
    @mappings.each_pair do |key, value|
      path = path.gsub(key, value) 
    end
    return path
  end

  def get_paths(argv)
    path = {}
    path[:remote] = argv.shift

    if argv[0] and /^\-/ =~ argv[0]
      path[:local] = File.expand_path('.')
    else
      path[:local] = File.expand_path(argv.shift || '.') 
    end

    path[:local] += '/' if File.directory? path[:local]
    path[:remote] = map_path(path[:remote] + ':' +  path[:local])
    return path
  end

  def get_rsync_args(argv)
    rsync_args = @rsync_args + ' '
    rsync_args += argv.join ' '
    return rsync_args
  end

  def push_to(argv)
    path = get_paths(argv)
    rsync_args = get_rsync_args(argv)

    puts "Pushing #{path[:local]} to #{path[:remote]} with options #{rsync_args}"
    exec("rsync \"#{path[:local]}\" \"#{path[:remote]}\" #{rsync_args}")
  end

  def pull_from(argv)
    path = get_paths(argv)
    rsync_args = get_rsync_args(argv)

    puts "Pulling #{path[:remote]} to #{path[:local]} with options #{rsync_args}"
    exec("rsync \"#{path[:remote]}\" \"#{path[:local]}\" #{rsync_args}")
  end
 
end
