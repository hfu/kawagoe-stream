require 'find'

Find.find('../kawagoe/docs/zxy/experimental_bvmap') {|path|
  next unless /(\d*)\/(\d*)\/(\d*)\.pbf$/.match(path)
  z, x, y = [$1, $2, $3].map {|v| v.to_i}
  print "tippecanoe-decode -c #{path} #{z} #{x} #{y}\n"
}
