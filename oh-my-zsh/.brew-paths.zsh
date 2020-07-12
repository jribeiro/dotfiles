# Overwrite sed to use gnu-sed instead
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Ruby
PATH="/usr/local/lib/ruby/gems/2.7.0/bin:/usr/local/opt/ruby/bin:$PATH"
LDFLAGS="-L/usr/local/opt/ruby/lib"
CPPFLAGS="-I/usr/local/opt/ruby/include"