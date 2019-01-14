alias home='ssh -p 22 root@domain.com'

# enable 'AllowTcpForwarding' & 'PermitOpen' in /etc/sshd_config
alias socks='ssh -p 22 -D 8080 -C -N root@domain.com'


# local port 80 (webserver) accessible to remote via port 9000 http://localhost:9000
# 9000 = remote port (must be accessible on the remote server)
# -C (compression), -N (no remote commands), -f (background process)
alias tunnel='ssh -p 22 user@domain.com -fNC -R 9000:localhost:80'
alias tunnel2='ssh -p 22 user@domain.com -fNC -R 9000:192.168.178.101:80'


function trustCaCert() {
    CERT=lets-encrypt-x3-cross-signed.der
    KEYSTORE_STUDIO_PREVIEW="/Applications/Android Studio 3.4 Preview.app/Contents/jre/jdk/Contents/Home/jre/lib/security/cacert"
    KEYSTORE_STUDIO_STABLE="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/jre/lib/security/cacerts"
    KEYSTORE_JAVA="$JAVA_HOME/jre/lib/security/cacerts"
    if [ ! -f $CERT ]; then
        echo "Could not find cacert at: $CERT. Start download"
        wget -O lets-encrypt-x3-cross-signed.der https://letsencrypt.org/certs/lets-encrypt-x3-cross-signed.der
    fi
    sudo keytool -trustcacerts -keystore $KEYSTORE_JAVA -storepass changeit -importcert -alias letsencryptauthorityx3 -file $CERT
    sudo keytool -trustcacerts -keystore $KEYSTORE_STUDIO_PREVIEW -storepass changeit -importcert -alias letsencryptauthorityx3 -file $CERT
    sudo keytool -trustcacerts -keystore $KEYSTORE_STUDIO_STABLE -storepass changeit -importcert -alias letsencryptauthorityx3 -file $CERT
}
