#!/usr/bin/env python

from __future__ import absolute_import, division, print_function

try:
    from buildbot_pkg import setup_www_plugin
except ImportError:
    import sys
    print("Please install buildbot_pkg module in order to install that package, or use the pre-build .whl modules available on pypi", file=sys.stderr)
    sys.exit(1)


setup_www_plugin(
    name='dashboard-test',
    description='',
    author=u'Pierre Tardy',
    author_email=u'tardyp@gmail.com',
    url='/',
    license='Apache-2.0',
    packages=['dashboard_test'],
    package_data={
        '': [
            'VERSION',
            'static/*'
        ]
    },
    entry_points="""
        [buildbot.www]
        dashboard_test = dashboard_test:ep
    """,
)
