
class DashboardTest extends Controller
    constructor: ($scope, dataService, resultsService) ->
        _.mixin($scope, resultsService)

        data = dataService.open().closeOnDestroy($scope)
        $scope.revisions = []
        $scope.codebases = []
        $scope.builders = data.getBuilders()
        $scope.builds = data.getBuilds(limit: 200, order: '-started_at', property: ['got_revision', 'reason'])
        $scope.builds.onChange = (builds)->
            codebases = {}
            for build in builds
                for codebase, revision of build.properties?.got_revision?[0]
                    if not codebases.hasOwnProperty(codebase)
                        codebases[codebase] = {}
                    codebases[codebase][revision] = true
            $scope.codebases = codebases
