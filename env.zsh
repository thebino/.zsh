# user bin
export PATH=${PATH}:~/bin
export PATH=${PATH}:/usr/local/sbin
export PATH=${PATH}:/usr/local/bin
export PATH=${PATH}:/usr/local/opt/openssl/bin

# python
export PATH="$(python -m site --user-base)/bin:${PATH}"

# gradle
export GRADLE_HOME=$HOME/.gradle/wrapper/dists/gradle-4.9-all/27pvqmtugn05bs54286nnj7b7k/gradle-4.9/
export PATH=${PATH}:$GRADLE_HOME/bin
GRADLE_OPTS="-Dorg.gradle.parallel=true -Dorg.gradle.daemon=true -XX:MaxPermSize=512m -Xmx4096m"


# sublime
export PATH=${PATH}:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin
