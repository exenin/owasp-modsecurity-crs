# Blacklist few IPs
curl -s -o /dev/null -I -w "%{http_code}" localhost/ip/blacklist?ip=8.8.8.8
curl -s -o /dev/null -I -w "%{http_code}" localhost/ip/blacklist?ip=104.27.149.197
