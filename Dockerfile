from ubuntu
run apt-get update 
run apt-get -y install git nano
run apt-get -y install  apache2 mysql-server 
run apt-get -y install libappconfig-perl libdate-calc-perl libtemplate-perl libmime-perl 
run apt-get -y install build-essential libdatetime-timezone-perl libdatetime-perl libemail-sender-perl libemail-mime-perl libemail-mime-modifier-perl libdbi-perl libdbd-mysql-perl libcgi-pm-perl libmath-random-isaac-perl libmath-random-isaac-xs-perl apache2-mpm-prefork libapache2-mod-perl2 libapache2-mod-perl2-dev libchart-perl libxml-perl libxml-twig-perl perlmagick libgd-graph-perl libtemplate-plugin-gd-perl libsoap-lite-perl libhtml-scrubber-perl libjson-rpc-perl libdaemon-generic-perl libtheschwartz-perl libtest-taint-perl libauthen-radius-perl libfile-slurp-perl libencode-detect-perl libmodule-build-perl libnet-ldap-perl libauthen-sasl-perl libtemplate-perl-doc libfile-mimeinfo-perl libhtml-formattext-withlinks-perl libgd-dev lynx-cur graphviz python-sphinx
#run git clone  --branch release-5.0-stable https://git.mozilla.org/bugzilla/bugzilla /bugzilla
add ./bugzilla /bugzilla
workdir /bugzilla
run /usr/bin/perl install-module.pl DateTime::TimeZone
run /usr/bin/perl install-module.pl PatchReader
run /usr/bin/perl install-module.pl Email::Reply
run /usr/bin/perl install-module.pl Apache2::SizeLimit
run /usr/bin/perl install-module.pl Cache::Memcached
run /usr/bin/perl install-module.pl File::Copy::Recursive
run /usr/bin/perl install-module.pl Email::Sender
run  /usr/bin/perl install-module.pl --all
