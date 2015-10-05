if has('python')
    command! -nargs=1 AvailablePython python <args>
elseif has('python3')
    command! -nargs=1 AvailablePython python3 <args>
else
    throw 'No python support present, vim-pep8radius will be disabled'
endif

command! PEP8Radius exec("AvailablePython pep8r_fix_file()")

AvailablePython <<EOF
import vim
import pep8radius as pep8r

def pep8r_fix_file():
    options = pep8r.parse_args(['-f', '-i'])
    radius = pep8r.Radius(options=options)
    buffer = vim.current.buffer
    modified_lines = radius.modified_lines(buffer.name)
    buffer[:] = pep8r.fix_file(buffer.name, modified_lines, options).split('\n')[0:-1]

EOF
