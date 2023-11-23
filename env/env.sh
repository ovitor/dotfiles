echo "env scripts"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"

export CHROOT=$HOME/chroot/
export LANG=en_US.UTF-8
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
