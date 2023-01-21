function prompt_docker-machine() {
    if [[ $DOCKER_MACHINE_NAME != "" && $DOCKER_MACHINE_NAME != "default" ]]; then
        p10k segment -f 4 -i "" -t " $DOCKER_MACHINE_NAME"
    else
        DOCKER_CONTEXT_NAME="null"
        if (( $+commands[jq] )); then
            local cfg=${DOCKER_CONFIG:-~/.docker/config.json}
            DOCKER_CONTEXT_NAME=$(jq -e -r '.currentContext' $cfg 2>/dev/null)
        fi
        if [[ $DOCKER_CONTEXT_NAME != "" && $DOCKER_CONTEXT_NAME != "null" ]]; then
            p10k segment -f 4 -i "" -t " $DOCKER_CONTEXT_NAME"
        fi
    fi
}
