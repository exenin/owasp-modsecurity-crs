domain=$1


for i in $(host $domain | grep 'has address' | cut -d' ' -f4 | sort -u);do
    grep $i blacklist.txt && echo 0 || echo 1
done
