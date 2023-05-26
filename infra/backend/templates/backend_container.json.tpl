[
  {
    "name": "${name}",
    "image": "${image}",
    "essential": true,
    "links": [],
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80,
        "protocol": "tcp"
      }
    ],
    "environment": [
      {
        "name": "SECRET_KEY",
        "value": "${secret_key}"
      },
      {
        "name": "DEBUG",
        "value": "${debug}"
      },
      {
        "name": "CORS_ORIGIN_ALLOW_ALL",
        "value": "${cors_origin_allow_all}"
      },
      {
        "name": "ALLOWED_HOSTS",
        "value": "${allowed_hosts}"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "${log_group}",
        "awslogs-region": "${region}",
        "awslogs-stream-prefix": "${log_stream}"
      }
    }
  }
]