from setuptools import setup
import pathlib

here = pathlib.Path(__file__).parent.resolve()

long_description = (here / 'README.md').read_text(encoding='utf-8')

setup(
    name='mp_rocker',
    version='0.0.0',

    description='Personal rocker plugins',
    long_description=long_description,
    long_description_content_type='text/markdown',

    author='Miguel Prada',
    author_email='miguel.prada@tecnalia.com',

    packages=['mp_rocker'],
    package_data={'mp_rocker': ['templates/*.em']},

    install_requires=[
        'rocker',
    ],

    entry_points={
        'rocker.extensions': [
            'mp_dev_helpers = mp_rocker.dev_helpers:DevHelpers',
            'mp_zsh = mp_rocker.zsh:Zsh',
            'mp_en_us_locale = mp_rocker.en_us_locale:EnUSLocale',
            'mp_dind_host = mp_rocker.dind_host:DindHost',
            'mp_kitware_cmake = mp_rocker.kitware_cmake:KitwareCmake',
            'mp_nvim = mp_rocker.nvim:NVim',
            'mp_nvim_nightly = mp_rocker.nvim:NVimNightly',
            'mp_nodesource_nodejs = mp_rocker.nodesource_nodejs:NodesourceNodejs',
        ]
    },
)

