# ================================================================== #
#
# ~/.bash_profile
#
# Executed from bash shell at login
#
# ================================================================== #

# Source bash config files
for file in ~/.{profile, bashrc, bash_prompt}; do
  [ -r "$file" ] && . "$file"
done
unset file
