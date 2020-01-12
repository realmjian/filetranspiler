```bash
git clone https://github.com/wangzheng422/filetranspiler

var_date=$(date '+%Y-%m-%d')
echo $var_date
buildah build-using-dockerfile -t docker.io/wangzheng422/filetranspiler:$var_date .
buildah push docker.io/wangzheng422/filetranspiler:$var_date
```