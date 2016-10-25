def marathon_response
  <<-EOF
{
  "tasks": [
    {
      "healthCheckResults": [
        {
          "taskId": "foo_bar.0",
          "lastFailureCause": null,
          "lastSuccess": "2016-07-14T15:27:48.286Z",
          "lastFailure": null,
          "firstSuccess": "2016-07-14T14:10:57.583Z",
          "consecutiveFailures": 0,
          "alive": true
        }
      ],
      "servicePorts": [
        1234
      ],
      "appId": "/foo/bar",
      "ipAddresses": [
        {
          "protocol": "IPv4",
          "ipAddress": "123.123.123.123"
        }
      ],
      "id": "foo_bar.0",
      "slaveId": "0-S0",
      "host": "host.example.com",
      "state": "TASK_RUNNING",
      "startedAt": "2016-07-14T14:09:43.350Z",
      "stagedAt": "2016-07-14T14:09:41.953Z",
      "ports": [
        123450
      ],
      "version": "2016-07-14T14:09:41.270Z"
    },
    {
      "healthCheckResults": [
        {
          "taskId": "broken_app.0",
          "lastFailureCause": null,
          "lastSuccess": null,
          "lastFailure": null,
          "firstSuccess": null,
          "consecutiveFailures": 0,
          "alive": false
        },
        {
          "taskId": "broken_app.1",
          "lastFailureCause": null,
          "lastSuccess": "2016-07-14T15:27:48.286Z",
          "lastFailure": null,
          "firstSuccess": "2016-07-14T14:10:57.583Z",
          "consecutiveFailures": 0,
          "alive": true
        }
      ],
      "servicePorts": [
        1234
      ],
      "appId": "/broken/app",
      "ipAddresses": [
        {
          "protocol": "IPv4",
          "ipAddress": "123.123.123.123"
        }
      ],
      "id": "broken_app.0",
      "slaveId": "0-S0",
      "host": "host.example.com",
      "state": "TASK_RUNNING",
      "startedAt": "2016-07-14T14:09:43.350Z",
      "stagedAt": "2016-07-14T14:09:41.953Z",
      "ports": [
        123450
      ],
      "version": "2016-07-14T14:09:41.270Z"
    },
    {
      "healthCheckResults": [
        {
          "taskId": "broken_app.1",
          "lastFailureCause": "I broke",
          "lastSuccess": null,
          "lastFailure": "2016-07-14T14:09:41.270Z",
          "firstSuccess": null,
          "consecutiveFailures": 1,
          "alive": false
        }
      ],
      "servicePorts": [
        1234
      ],
      "appId": "/broken/app",
      "ipAddresses": [
        {
          "protocol": "IPv4",
          "ipAddress": "123.123.123.123"
        }
      ],
      "id": "broken_app.0",
      "slaveId": "0-S0",
      "host": "host.example.com",
      "state": "TASK_RUNNING",
      "startedAt": "2016-07-14T14:09:43.350Z",
      "stagedAt": "2016-07-14T14:09:41.953Z",
      "ports": [
        123450
      ],
      "version": "2016-07-14T14:09:41.270Z"
    }
  ]
}
EOF
end
