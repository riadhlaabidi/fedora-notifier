systemctl --user enable breaktime-notifier.service
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError enabling break time notifier service unit.\033[0m"
fi

systemctl --user start breaktime-notifier.service
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError starting break time notifier service unit.\033[0m"
fi

systemctl --user enable breaktime-notifier.timer
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError enabling break time notifier timer unit.\033[0m"
fi

systemctl --user start breaktime-notifier.timer
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError starting break time notifier timer unit.\033[0m"
fi

echo -e "\033[0;32mBreak time notifier started successfully\033[0m"