echo "Endpoints"
echo "-----------------"
cat $1 | grep -aoP  "(?<=(\"|\'|\`))\/[a-zA-Z0-9_?&=\/\-\#\.]*(?=(\"|\'|\`))" | sort -u 

echo "  "
echo "  "
echo "URLS"
echo "-----------------"
cat $1 | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*"* | sort -u
