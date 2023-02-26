# focalx_ppa
PPA Repo for DragonOS FocalX


```
curl -s --compressed "https://alphafox02.github.io/focalx_ppa/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/focalx_ppa.gpg >/dev/null
sudo curl -s --compressed -o /etc/apt/sources.list.d/focalx.list "https://alphafox02.github.io/focalx_ppa/focalx.list"
sudo apt update
```

## Installing Packages
```
sudo apt upgrade gr-gsm
```
Until all packages are made properly (without checkinstall) this step may be required
```
sudo ldconfig
```

