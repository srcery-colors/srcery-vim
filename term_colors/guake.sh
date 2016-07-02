#!/bin/bash 

# Save this script into set_colors.sh, make this file executable and run it: 
# 
# $ chmod +x set_colors.sh 
# $ ./set_colors.sh 
# 
# Alternatively copy lines below directly into your shell. 

gconftool-2 -s -t string /apps/guake/style/background/color '#1c1c1b1b1919'
gconftool-2 -s -t string /apps/guake/style/font/color '#fcfce8e8c3c3'
gconftool-2 -s -t string /apps/guake/style/font/palette '#1c1c1b1b1919:#ffff31312828:#51519f9f5050:#fbfbb8b82929:#55557373a3a3:#e0e02c2c6d6d:#16169393a5a5:#919181817575:#2d2d2b2b2828:#dada49493939:#9898bcbc3737:#ffffc6c66d6d:#6d6d9c9cbebe:#e3e356568282:#3434bebedada:#fcfce8e8c3c3'
