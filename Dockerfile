from centos

run yum groupinstall -y 'Development Tools'
run yum install -y openssl-devel

run curl -O http://www.gcd.org/sengoku/stone/stone-2.3e.tar.gz && \
  tar zxvf stone-*.tar.gz && \
  cd stone-*/ && \
  FLAGS=-D_GNU_SOURCE make linux-ssl && \
  cp -a stone /stone && \
  rm -fr stone-*

entrypoint /stone
