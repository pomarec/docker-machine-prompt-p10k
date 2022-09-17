function prompt_docker-machine() {
    if [[ $DOCKER_MACHINE_NAME != "" && $DOCKER_MACHINE_NAME != "default" ]]; then
        p10k segment -f 1 -i "" -t " $DOCKER_MACHINE_NAME"
    else
        DOCKER_CONTEXT_NAME=$(docker context inspect --format "{{ .Name }}")
        if [[ $DOCKER_CONTEXT_NAME != "" && $DOCKER_CONTEXT_NAME != "default" ]]; then
            p10k segment -f 4 -i "" -t " $DOCKER_CONTEXT_NAME"
        fi
    fi
}
