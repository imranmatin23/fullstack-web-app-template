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
      },
      {
        "name": "DATABASE_TYPE",
        "value": "${database_type}"
      },
      {
        "name": "SQL_ENGINE",
        "value": "${sql_engine}"
      },
      {
        "name": "SQL_DATABASE",
        "value": "${sql_database}"
      },
      {
        "name": "SQL_USER",
        "value": "${sql_user}"
      },
      {
        "name": "SQL_PASSWORD",
        "value": "${sql_password}"
      },
      {
        "name": "SQL_HOST",
        "value": "${sql_host}"
      },
      {
        "name": "SQL_PORT",
        "value": "${sql_port}"
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