#!/bin/sh

#2015-04-09 11:21  33510258   s3://download.basho.co.jp/otp/download/otp_doc_html_17.5.tar.gz
#2015-04-09 11:21   1363320   s3://download.basho.co.jp/otp/download/otp_doc_man_17.5.tar.gz
#2015-04-09 11:21     39260   s3://download.basho.co.jp/otp/download/otp_src_17.5.readme
#2015-04-09 11:21  67242289   s3://download.basho.co.jp/otp/download/otp_src_17.5.tar.gz
#2015-04-09 11:21  95446113   s3://download.basho.co.jp/otp/download/otp_win32_17.5.exe
#2015-04-09 11:22  95622661   s3://download.basho.co.jp/otp/download/otp_win64_17.5.exe

VERSION=18.0
BASEURL=http://erlang.org/download

FILES="otp_doc_html_${VERSION}.tar.gz otp_doc_man_${VERSION}.tar.gz otp_src_${VERSION}.readme otp_src_${VERSION}.tar.gz otp_win32_${VERSION}.exe otp_win64_${VERSION}.exe"

for FILE in $FILES; do
    wget $BASEURL/$FILE;
done

for FILE in $FILES; do
    md5 $BASEURL/$FILE;
done

for FILE in $FILEs; do
    echo "s3cmd -c config.s3cfg put $FILE s3://download.basho.co.jp/otp/download/";
done
