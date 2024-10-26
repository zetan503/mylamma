docker run -d -p 3000:8080 --gpus=all -v ollama:/root/.ollama -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama
OLLAMA_DOCKER_TAG=latest
WEBUI_DOCKER_TAG=main
OPEN_WEBUI_PORT=3000
WEBUI_SECRET_KEY=your-secure-random-key

wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.6.2/local_installers/cuda-repo-wsl-ubuntu-12-6-local_12.6.2-1_amd64.deb
sudo dpkg -i cuda-repo-wsl-ubuntu-12-6-local_12.6.2-1_amd64.deb
sudo cp /var/cuda-repo-wsl-ubuntu-12-6-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-6


$wslIp = (wsl hostname -I).Split(' ')[0]
netsh interface portproxy set v4tov4 listenport=443 listenaddress=0.0.0.0 connectport=443 connectaddress=$wslIp
netsh interface portproxy set v4tov4 listenport=11434 listenaddress=0.0.0.0 connectport=443 connectaddress=$wslIp

PS C:\>
>> netsh interface portproxy show all

764  pip install yt-dlp
  765  yt-dlp --write-sub --skip-download https://www.youtube.com/watch?v=zenJn-ADrZ4
  766  sudo apt install ffmpeg
  767  yt-dlp --write-sub --skip-download https://www.youtube.com/watch?v=zenJn-ADrZ4
  768  cat ABC\ World\ News\ Tonight\ with\ David\ Muir\ Full\ Broadcast\ -\ Oct.\ 21\,\ 2024\ \[zenJn-ADrZ4\].en.vtt
  769  yt-dlp --write-auto-sub --skip-download https://www.youtube.com/watch?v=zenJn-ADrZ4
  770* cat ABC\ World\ News\ Tonight\ with\ David\ Muir\ Full\ Broadcast\ -\ Oct.\ 21\,\ 2024\ \[zenJn-ADrZ4\].en.vtt
  771  yt-dlp --write-auto-sub --skip-download https://www.youtube.com/watch?v=zenJn-ADrZ4


 740  git clone https://github.com/danielmiessler/fabric.git
  741  cd fabric/
  742  ls
  743  more README.md
  744  curl -L https://github.com/danielmiessler/fabric/releases/latest/download/fabric-linux-amd64 > fabric && chmod +x fabric && ./fabric --version
  745  more README.md
  746  fabric --setup


New-NetFirewallRule -DisplayName "Ollama" -Direction Inbound -Protocol TCP -LocalPort 11434 -Action Allow


netsh interface portproxy add v4tov4 listenport=11434 listenaddress=0.0.0.0 connectport=11434 connectaddress=$(wsl hostname -I)

# Check WSL's IP address
wsl hostname -I
# Output shows: 172.22.245.128 (and other IPs)

# Test local connectivity to the service
curl http://172.22.245.128:80
# Clear any existing port proxies
netsh interface portproxy reset

# Add port forwarding rules for HTTP and HTTPS
netsh interface portproxy add v4tov4 listenport=80 listenaddress=192.168.1.10 connectaddress=172.22.245.128 connectport=80
netsh interface portproxy add v4tov4 listenport=443 listenaddress=192.168.1.10 connectaddress=172.22.245.128 connectport=443

# Verify the port forwarding rules
netsh interface portproxy show v4tov4


# Remove any existing rules to avoid conflicts
Remove-NetFirewallRule -DisplayName "WSL_HTTP" -ErrorAction SilentlyContinue
Remove-NetFirewallRule -DisplayName "WSL_HTTPS" -ErrorAction SilentlyContinue

# Add new firewall rules
New-NetFirewallRule -DisplayName "WSL_HTTP" -Direction Inbound -Action Allow -Protocol TCP -LocalPort 80
New-NetFirewallRule -DisplayName "WSL_HTTPS" -Direction Inbound -Action Allow -Protocol TCP -LocalPort 443
pip install -U "huggingface_hub[cli]"

pip install --upgrade huggingface_hub
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
HF_HUB_ENABLE_HF_TRANSFER=1
 ollama create city96_large -f Modelfile
