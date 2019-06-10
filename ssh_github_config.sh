#------------------------------------------------------
# WARNING: This is just a draft and is not supposed to
# be an executable (just yet).


#------------------------------------------------------
# Check if you already have an ssh key 
ls ~/.ssh

# For github you should have two files there id_rsa and id_rsa.pub. 
# If their not there, they need to be created 

#------------------------------------------------------
# Create a new ssh (rsa) key.


ssh-keygen -t rsa -b 4096 -C "leonardoviotti@gmail.com"
# -t defines the type
# -b specifies the bites that github needs
# -C I don't really know why I need to put my e-mail, saw it on youtube

# Use the default file, i.e. just press enter when asked for the file
# Define a passphrase (password)

#------------------------------------------------------
# Add ssh key to ssh agent. 

# Also not sure what this is for
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

#------------------------------------------------------
# Add to github account

# Go to https://github.com/settings/ssh/new

sudo apt-get install xclip

# copy your ssh key to clipboard
#sudo apt-get install xclip

cat ~/.ssh/id_rsa.pub | xclip -selection clipboard

# Now paste this to the github site