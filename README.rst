vim-pep8radius
=========

Vim plugin to auto-format Python code using `pep8radius <https://github.com/hayd/pep8radius>`_


Usage
=====

Just call the ``:PEP8radius`` command, and it will reformat the modified parts of the current python file.

Installation
============

* Install `pep8radius <https://github.com/hayd/pep8radius>`_:

.. code::

    pip install pep8radius

* Add the plugin to vim using `Vundle <https://github.com/gmarik/vundle>`_ or any other plugin manager, pointing to this repo:

.. code::

    Plugin 'fisadev/vim-pep8radius'

(Or if you don't use any plugin manager, you can just copy the ``python_vimpep8radius.vim`` file to your ``.vim/ftplugin`` folder)
