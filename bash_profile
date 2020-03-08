# ================================================================== #
#
# ~/.bash_profile
#
# Executed from bash shell at login
#
# ================================================================== #

# Source bash config files
for file in ~/.{profile,bashrc,bash_prompt}; do
  [ -r "$file" ] && source "$file"
done
unset file

export PATH="/usr/local/opt/protobuf@2.5/bin:$PATH"
export PATH="/usr/local/opt/mongodb-community@4.0/bin:$PATH"
