gradlew.bat clean openapi3

docker rm -f swagger

docker run -d --name 'swagger'`
    -p 12121:8080 `
    -e URLS="[ `
        { url: 'docs/openapi3.yaml', name: 'openapi3-yaml' } `
    ]" `
    -v ${PWD}\build\api-spec:/usr/share/nginx/html/docs `
    swaggerapi/swagger-ui
