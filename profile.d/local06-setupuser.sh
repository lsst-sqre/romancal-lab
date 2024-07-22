# This functionality is provided in the Rubin Science Platform by the class
# lsst.rsp.startup:
# https://github.com/lsst-sqre/lsst-rsp/tree/main/src/lsst/rsp/startup
# SPHEREx should consider implementing its own version of something like
# that, perhaps using the Rubin class as inspiration

# In a production environment, there will be a lot more you want to do.

# Create user data structures

for d in WORK DATA notebooks; do
    mkdir -p "${HOME}/${d}"
done

# Copy anything out of /etc/skel if it's not in the user dir already
cp -an /etc/skel/* /etc/skel/.* "${HOME}" 2>/dev/null

# Copy dircolors if needed
my_dircolors="${HOME}/.dir_colors"
if [ ! -f "${my_dircolors}" ]; then
    cp /etc/dircolors.ansi-universal "${my_dircolors}"
fi

# Activate dircolors
eval $(dircolors -b "${my_dircolors}")

alias ls='ls --color=auto'
