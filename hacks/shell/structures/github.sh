
#
# Install a GitHub package by <user> and <project>.
#

github_install() {
  local user=$1
  local project=$2
  mkdir "/tmp/$project" \
    && cd "/tmp/$project" \
    && curl -L# "https://github.com/$user/$project/tarball/master" \
    | tar -zx --strip 1 \
    && make install
}
