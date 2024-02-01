#!/bin/bash

# Atualizar o sistema
apt update -y
apt upgrade -y

# Instalar Perl e módulos Perl
apt install -y perl libxml-simple-perl libcompress-zlib-perl libnet-ip-perl libwww-perl libdigest-md5-perl libnet-ssleay-perl libdata-uuid-perl libio-socket-ssl-perl libcrypt-ssleay-perl liblwp-protocol-https-perl libproc-daemon-perl libproc-pid-file-perl libnet-snmp-perl libnet-netmask-perl libnmap-parser-perl libcups2-dev libparse-edid-perl

# Instalar utilitários adicionais
apt install -y dmidecode pciutils make gcc nmap

# Verificar a versão do Perl
perl -v

# Verificar a instalação dos módulos Perl
perl -MXML::Simple -e 'print "$XML::Simple::VERSION\n"'
perl -MCompress::Zlib -e 'print "$Compress::Zlib::VERSION\n"'
perl -MNet::IP -e 'print "$Net::IP::VERSION\n"'
perl -MLWP::UserAgent -e 'print "$LWP::UserAgent::VERSION\n"'
perl -MDigest::MD5 -e 'print "$Digest::MD5::VERSION\n"'
perl -MNet::SSLeay -e 'print "$Net::SSLeay::VERSION\n"'
perl -MData::UUID -e 'print "$Data::UUID::VERSION\n"'
perl -MIO::Socket::SSL -e 'print "$IO::Socket::SSL::VERSION\n"'
perl -MCrypt::SSLeay -e 'print "$Crypt::SSLeay::VERSION\n"'
perl -MLWP::Protocol::https -e 'print "$LWP::Protocol::https::VERSION\n"'
perl -MProc::Daemon -e 'print "$Proc::Daemon::VERSION\n"'
perl -MProc::PID::File -e 'print "$Proc::PID::File::VERSION\n"'
perl -MNet::SNMP -e 'print "$Net::SNMP::VERSION\n"'
perl -MNet::Netmask -e 'print "$Net::Netmask::VERSION\n"'
perl -MNmap::Parser -e 'print "$Nmap::Parser::VERSION\n"'
perl -MNet::CUPS -e 'print "$Net::CUPS::VERSION\n"'
perl -MParse::EDID -e 'print "$Parse::EDID::VERSION\n"'

# Verificar a instalação dos utilitários adicionais
dmidecode -V
lspci -v
make -v
gcc --version
nmap --version
