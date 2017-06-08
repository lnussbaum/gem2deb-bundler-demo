require 'colorize'
require 'ffi'

# This will attach to the native libc puts function using FFI (Foreign Function Interface)
module Hello
  extend FFI::Library
  ffi_lib FFI::Library::LIBC
  attach_function :puts, [ :string ], :int
end

module Gem2debBundlerDemo
  def self.do_it
    puts "Hello World in color".colorize(:light_red)
    Hello.puts("Hello World using FFI")
  end
end
