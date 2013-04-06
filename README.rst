VM with support for GAE
=======================

Ubuntu box ready to be used with Google App Engine.


Usage
-----

Copy the ``vagrantconfig.yaml.dist`` file to ``vagrantconfig.yaml`` and populate it with your details.


Once your details are in place you should be able to run::

    vagrant up


An bash function has been provided to facilitate ``dev_appserver.py`` listening to ``0.0.0.0`` in a private network. e.g.::

    gae helloworld/

