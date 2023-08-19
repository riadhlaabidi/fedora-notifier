echo "Installing break time notifier ..."

# Copy unit and script files
cp ./breaktime-notifier.service ./breaktime-notifier.timer /etc/systemd/user/
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError installing break time notifier.\033[0m"
    exit 1
fi

cp ./breaktime-notifier.sh /usr/bin/
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError installing break time notifier.\033[0m"
    exit 1
fi

# Make script executable
chmod +x /usr/bin/breaktime-notifier.sh
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError installing break time notifier.\033[0m"
    exit 1
fi

echo -e "\033[0;32mBreak time notifier installed successfully.\033[0m" 

