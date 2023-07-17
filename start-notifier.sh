systemctl enable breaktime-notifier.service
systemctl start breaktime-notifier.service
systemctl enable breaktime-notifier.timer
systemctl start breaktime-notifier.timer
echo "Breaktime notifier job is now running."