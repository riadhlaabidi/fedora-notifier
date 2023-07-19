systemctl --user stop breaktime-notifier.timer
systemctl --user disable breaktime-notifier.timer
systemctl --user stop breaktime-notifier.service
systemctl --user disable breaktime-notifier.service
systemctl --user daemon-reload 
systemctl --user reset-failed 
echo "Stopped breaktime notifier job."