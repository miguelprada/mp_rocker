import em
import pkgutil
from rocker.extensions import RockerExtension


class KitwareCmake(RockerExtension):

    name = 'mp_kitware_cmake'

    @classmethod
    def get_name(cls):
        return cls.name

    def __init__(self):
        self._env_subs = None
        self.name = KitwareCmake.get_name()

    def get_environment_subs(self):
        if not self._env_subs:
            self._env_subs = {}
        return self._env_subs

    def get_snippet(self, cliargs):
        snippet = pkgutil.get_data('mp_rocker', 'templates/{}_snippet.Dockerfile.em'.format(self.name)).decode('utf-8')
        return em.expand(snippet, self.get_environment_subs())

    @staticmethod
    def register_arguments(parser, defaults={}):
        parser.add_argument('--mp-kitware-cmake',
            action='store_true',
            help='share docker socket and install docker CLI')

