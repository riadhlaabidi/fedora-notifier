systemctl --user stop breaktime-notifier.timer
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError stopping break time notifier timer unit.\033[0m"
fi

systemctl --user disable breaktime-notifier.timer
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError disabling break time notifier timer unit.\033[0m"
fi

systemctl --user stop breaktime-notifier.service
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError stopping break time notifier service unit.\033[0m"
fi

systemctl --user disable breaktime-notifier.service
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError disabling break time notifier service unit.\033[0m"
fi

systemctl --user daemon-reload 
if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError reloading daemon.\033[0m"
else 
    echo -e "\033[0;32mDaemon reloaded successfully.\033[0m"
fi

systemctl --user reset-failed
 if [ $? -ne 0 ]; then 
    echo -e "\033[0;31mError resetting failed history.\033[0m"
else 
    echo -e "\033[0;32mFailed reset successfully.\033[0m"
fi


echo "Stopped breaktime notifier job."