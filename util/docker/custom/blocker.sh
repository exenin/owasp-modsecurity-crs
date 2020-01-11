# Blacklist few IPs
curl -s -o /dev/null -I -w "%{http_code}" localhost/ip/blacklist?ip=0.0.0.1
curl -s -o /dev/null -I -w "%{http_code}" localhost/ip/blacklist?ip=0.0.0.2
curl -s -o /dev/null -I -w "%{http_code}" localhost/ip/blacklist?ip=0.0.0.3
