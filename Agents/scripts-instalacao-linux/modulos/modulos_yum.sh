#!/bin/bash

# Atualiza o sistema
yum update -y

# Instala o Perl e módulos Perl
yum install -y perl perl-XML-Simple perl-Compress-Zlib perl-Net-IP perl-libwww-perl perl-Digest-MD5 perl-Net-SSLeay perl-Data-UUID perl-IO-Socket-SSL perl-Crypt-SSLeay perl-LWP-Protocol-https perl-Proc-Daemon perl-Proc-PID-File perl-Net-SNMP perl-Net-Netmask perl-Nmap-Parser perl-Net-CUPS perl-Parse-EDID

# Instala utilitários adicionais
yum install -y dmidecode pciutils make gcc nmap

# Verifica a versão do Perl
perl -v

# Verifica a instalação dos módulos Perl
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

# Verifica a instalação dos utilitários adicionais
dmidecode -V
lspci -v
make -v
gcc --version
nmap --version