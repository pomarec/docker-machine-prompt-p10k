function prompt_docker-machine() {
    if [[ $DOCKER_MACHINE_NAME != "" && $DOCKER_MACHINE_NAME != "default" ]]; then
        p10k segment  -f 3  -i "🐳" -t " $DOCKER_MACHINE_NAME"
    fi
}