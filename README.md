# Netlogger
A simple collection of scripts that log how much network data each process consumes in a month. It uses nethogs to log your network activity and nethogs-parser so parse and show that data. Network activity is stored in text files on the filesystem. For now, activity is only logged on a monthly basis.

## Install instructions
### List of dependencies
- nethogs
- go
- systemd
- git

### Using the install script
Download the installer script:  
```wget https://raw.githubusercontent.com/zeko9381/netlogger/main/netlogger_installer.sh```

Make it executable:  
```sudo chmod +x netlogger_installer.sh```

And run it:  
```./netlogger_installer.sh```
