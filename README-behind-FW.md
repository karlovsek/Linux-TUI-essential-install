### If you can connect to the remote only over SSH, i.e. remote does not have access to the internet
Run the following command from the PC that has internet connection

```ssh -D 1080 localhost -t ssh -R 1080:localhost:1080 $REMOTE_IP```


On the remote set

```curl -x socks5h://localhost:1080 -L https://nixos.org/nix/install > nix-install.sh ```

```git apply nix-install-proxy-curl-patch.patch && chmod +x nix-install-curl-proxy-patch.sh ```
```ALL_PROXY=socks5h://127.0.0.1:1080 ./nix-install-proxy-curl-patch.sh`

# todo call install scipt

``` # set git using proxy
  git config --global http.proxy 'socks5h://127.0.0.1:1080' &&
  

  # clone scipts
  git clone https://github.com/karlovsek/Linux-TUI-essential-install &&
  
  cd Linux-TUI-essential-install &&


    
  
