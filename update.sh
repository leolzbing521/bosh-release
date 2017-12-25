bosh -e vbox create-release --force
bosh -e vbox upload-release
bosh -e vbox -d learn-bosh deploy manifest.yml
