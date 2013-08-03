require "dbg/version"

module Dbg
  def self.out
    @out || $stderr
  end

  def self.out=(out)
    @out = out
  end
end

def dbg(&blk)
  code = blk.call.to_s
  result = blk.binding.eval(code)

  Dbg.out.puts "#{code}: #{result}"
end
