# Remove the old Repo Achieve File - if it exists & make a new one
rm -r WaveOS-old
mkdir WaveOS-old

# if there is a copy of the repo locally, move it to old (if it exists)
mv var/WaveOS var/WaveOS-old

# remove content of the repo archieve (incase there's a few piled up)
rm -r var/WaveOS/* -y

# retrieve the latest repo (master branch) and put into the /var directory
sudo git clone https://github.com/unclehowell/WaveOS.git var
