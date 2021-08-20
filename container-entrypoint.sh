#!/bin/bash

#export JAVA_OPTS="-Xms640M -Xmx1500M"

# Get limits
 
#CONTAINER_MEMORY_IN_BYTES=`cat /sys/fs/cgroup/memory/memory.limit_in_bytes`
#DEFAULT_MEMORY_CEILING=$((2**40-1))
#if [ "${CONTAINER_MEMORY_IN_BYTES}" -lt "${DEFAULT_MEMORY_CEILING}" ]; then
# 
#    if [ -z $CONTAINER_HEAP_PERCENT ]; then
#        LOW_MEMORY_THRESHOLD=$((640*2**20)) # 640M
#        if [ "${CONTAINER_MEMORY_IN_BYTES}" -lt "${LOW_MEMORY_THRESHOLD}" ]; then
#            # If the user is not actively tailoring environment variables to adjust memory use,
#            # then tailor the runtime for limited memory automatically.
#            CONTAINER_HEAP_PERCENT=0.10
# 
#        else
#            CONTAINER_HEAP_PERCENT=0.30
#            
#        fi
#    fi
#     
#    CONTAINER_MEMORY_IN_MB=$((${CONTAINER_MEMORY_IN_BYTES}/1024**2))
#    CONTAINER_HEAP_MAX=$(echo "${CONTAINER_MEMORY_IN_MB} ${CONTAINER_HEAP_PERCENT}" | awk '{ printf "%d", $1 * $2 }')
#     
#    JAVA_MAX_HEAP_PARAM="-Xmx${CONTAINER_HEAP_MAX}m"
#fi
 
# Start
#exec java $JAVA_MAX_HEAP_PARAM $LOW_MEMORY_PARAMS -Duser.home=${HOME} $JAVA_OPTS -Dfile.encoding=UTF8 -jar app.jar $ADDITIONAL_VARS "$@"