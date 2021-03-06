parse_git_branch () {
   git rev-parse --abbrev-ref HEAD 2> /dev/null | sed 's#\(.*\)# (git::\1)#'
}
parse_svn_branch() {
   parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g' | awk '{print " (svn::"$1"@'$(parse_svn_revision)')" }'
}
parse_svn_url() {
  svn info 2>/dev/null | sed -ne 's#^URL: ##p'
}
parse_svn_repository_root() {
   svn info 2>/dev/null | sed -ne 's#^Repository Root: ##p'
}
parse_svn_revision() {
    svn info 2>/dev/null | sed -ne 's#^Revision: ##p'
}

BLACK="\[\033[0;38m\]"
RED="\[\033[0;31m\]"
RED_BOLD="\[\033[01;31m\]"
BLUE="\[\033[01;34m\]"
GREEN="\[\033[0;32m\]"
export PS1="$BLACK[ \u@$RED\h $GREEN\w$RED_BOLD\$(parse_git_branch)\$(parse_svn_branch)$BLACK ] "
