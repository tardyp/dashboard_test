from buildbot.www.plugin import Application


class DashboardTestApplication(Application):
    pass

# create the interface for the setuptools entry point
ep = DashboardTestApplication(__name__, "")
