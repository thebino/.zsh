export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home
# java
#export PATH=${PATH}:$JAVA_HOME
DEFAULT_JVM_OPTS="-Xmx512m"


# list available java versions
alias java_ls='/usr/libexec/java_home -V 2>&1 | grep -E "\d.\d.\d[,_]" | cut -d , -f 1 | colrm 1 4 | grep -v Home'

# change selected java version
function java_use() {
   export JAVA_HOME=$(/usr/libexec/java_home -v $1)
   export PATH=${PATH}:$JAVA_HOME/bin
   java -version
}
