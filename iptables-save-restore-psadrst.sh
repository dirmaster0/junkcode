# Backup IPTables rules to /etc/iptables/rules* files
sudo iptables-save > /etc/iptables/rules.v4
sudo ip6tables-save > /etc/iptables/rules.v6
echo "Save completed!"
sudo sleep 5
# Reset PSAD
sudo psad -R
sudo sleep 5
echo "PSAD reset!"
# Restore IPTables rules from /etc/iptables/rules* files
sudo iptables-restore < /etc/iptables/rules.v4
sudo ip6tables-restore < /etc/iptables/rules.v6
echo "Restore completed!"
 
