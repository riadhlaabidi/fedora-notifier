systemctl stop breaktime-notifier.timer
systemctl disable breaktime-notifier.timer
systemctl stop breaktime-notifier.service
systemctl disable breaktime-notifier.service
systemctl daemon-reload 
systemctl reset-failed 
echo "Stopped breaktime notifier job."