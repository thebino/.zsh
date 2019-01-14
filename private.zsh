alias home='ssh -p 22 root@domain.com'
alias socks='ssh -p 22 -D 8080 root@domain.com'


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
