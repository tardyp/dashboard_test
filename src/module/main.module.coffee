# Register new module
class DashboardTest extends App
    constructor: -> return [
        'ui.router', 'buildbot_config', 'guanlecoja.ui', 'bbData'

    ]

# Register new state
class State extends Config
    constructor: ($stateProvider, glMenuServiceProvider) ->
        # Name of the state
        name = "dashboard_test"
        caption = "dashboardTest"
        # Configuration
        glMenuServiceProvider.addGroup
            name: name
            caption: caption
            icon: 'user-circle'
            order:  1
        cfg =
            group: name
            caption: caption

        # Register new state
        state =
            controller: "dashboardTestController"
            templateUrl: "dashboard_test/views/dashboard.html"
            name: name
            url: "/#{name}"
            data: cfg
        $stateProvider.state(state)
