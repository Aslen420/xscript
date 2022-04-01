echo 'Are you sure you want to continue? y\n : '
read yn
if [[ "$yn" == "y" ]]; then
    echo 'Installing all packages...'
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    yes | yay -Syu nvidia obs-studio visual-studio-code-bin git spotify-bin discord npm nodejs
    echo 'Do you want betterdiscord? y\n : '
    read betterdiscord
    if [[ "$betterdiscord" == "y" ]]; then
        git clone https://github.com/BetterDiscord/BetterDiscord.git
        cd BetterDiscord
        npm install
        npm run build
        cd dist
        npm run inject
    else
        echo 'Ok.'
    fi
else 
    echo 'Ok.'
fi
