
print
  example string, with newline
    $ echo "{{ string }}"

  example string, no newline
    $ printf "{{ string }}"

transform
  find output, to comma
    $ find . -path '*.yaml' | tr '\n' ','
  or
    $ IFS=, echo $(find . -path '*.yaml')

sources
  http://stackoverflow.com/questions/tagged/bash
  http://stackoverflow.com/questions/29082699/how-to-find-all-files-and-separate-results-by-comma-on-unix
  http://stackoverflow.com/questions/1358540/how-to-count-all-the-lines-of-code-in-a-directory-recursively?rq=1
  http://stackoverflow.com/questions/316590/how-to-count-lines-of-code-including-sub-directories
  http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
  http://stackoverflow.com/questions/638975/how-do-i-tell-if-a-file-does-not-exist-in-bash
  http://stackoverflow.com/questions/818255/in-the-shell-what-is-21
  http://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
  http://stackoverflow.com/questions/4181703/how-can-i-concatenate-string-variables-in-bash
  http://stackoverflow.com/questions/918886/how-do-i-split-a-string-on-a-delimiter-in-bash
  http://stackoverflow.com/questions/229551/string-contains-in-bash
  http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script
  http://stackoverflow.com/questions/21186724/why-is-whitespace-sometimes-needed-around-metacharacters
  http://stackoverflow.com/questions/226703/how-do-i-prompt-for-input-in-a-linux-shell-script
  http://stackoverflow.com/questions/169511/how-do-i-iterate-over-a-range-of-numbers-defined-by-variables-in-bash
  http://stackoverflow.com/questions/2518127/how-do-i-reload-bashrc-without-logging-out-and-back-in
  http://stackoverflow.com/questions/2264428/converting-string-to-lower-case-in-bash-shell-scripting
  http://stackoverflow.com/questions/876239/bash-redirect-and-append-both-stdout-and-stderr
  http://stackoverflow.com/questions/2342826/how-to-pipe-stderr-and-not-stdout
  http://stackoverflow.com/questions/8467424/echo-new-line-in-bash-prints-literal-n
  http://stackoverflow.com/questions/1250079/how-to-escape-single-quotes-within-single-quoted-strings
  http://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash
  http://stackoverflow.com/questions/762348/how-can-i-exclude-all-permission-denied-messages-from-find
  http://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash
  http://stackoverflow.com/questions/4651437/how-to-set-a-bash-variable-equal-to-the-output-from-a-command
  http://stackoverflow.com/questions/1371261/get-current-directory-name-without-full-path-in-bash-script
  http://stackoverflow.com/questions/733824/how-to-run-a-sh-script-in-an-unix-console-mac-terminal
  http://stackoverflow.com/questions/749544/pipe-to-from-clipboard
  http://stackoverflow.com/questions/1289026/syntax-for-a-single-line-bash-infinite-while-loop
  http://stackoverflow.com/questions/392022/best-way-to-kill-all-child-processes
  http://stackoverflow.com/questions/6212219/passing-parameters-to-a-bash-function
  http://stackoverflow.com/questions/613572/capturing-multiple-line-output-to-a-bash-variable
  http://stackoverflow.com/questions/1583219/awk-sed-how-to-do-a-recursive-find-replace-of-a-string
  http://stackoverflow.com/questions/4824590/propagate-all-arguments-in-a-bash-shell-script
  http://stackoverflow.com/questions/806906/how-do-i-test-if-a-variable-is-a-number-in-bash
  http://stackoverflow.com/questions/2237080/how-to-compare-strings-in-bash-script
  http://stackoverflow.com/questions/6348902/how-can-i-add-numbers-in-a-bash-script
  http://stackoverflow.com/questions/4997693/given-two-directory-trees-how-can-i-find-out-which-files-differ
  http://stackoverflow.com/questions/192292/bash-how-best-to-include-other-scripts
  http://stackoverflow.com/questions/1378274/in-a-bash-script-how-can-i-exit-the-entire-script-if-a-certain-condition-occurs
  http://stackoverflow.com/questions/696839/how-do-i-write-a-bash-script-to-restart-a-process-if-it-dies
  http://stackoverflow.com/questions/255898/how-to-iterate-over-arguments-in-bash-script
  http://stackoverflow.com/questions/687948/timeout-a-command-in-bash-without-unnecessary-delay
  http://stackoverflow.com/questions/5163144/what-are-the-special-dollar-sign-shell-variables
  http://stackoverflow.com/questions/17965/generate-a-core-dump-in-linux
  http://stackoverflow.com/questions/496702/can-a-shell-script-set-environment-variables-of-the-calling-shell
  http://stackoverflow.com/questions/369758/how-to-trim-whitespace-from-bash-variable
  http://stackoverflow.com/questions/185451/quick-and-dirty-way-to-ensure-only-one-instance-of-a-shell-script-is-running-at
  http://stackoverflow.com/questions/893585/how-to-parse-xml-in-bash
  http://stackoverflow.com/questions/19075671/how-to-use-shell-variables-in-awk-script
  http://stackoverflow.com/questions/17359/how-do-i-send-a-file-as-an-email-attachment-using-linux-command-line
  http://stackoverflow.com/questions/428109/extract-substring-in-bash
  http://stackoverflow.com/questions/296536/how-to-urlencode-data-for-curl-command
  http://stackoverflow.com/questions/218156/bash-regex-with-quotes
  http://stackoverflow.com/questions/216995/how-can-i-use-inverse-or-negative-wildcards-when-pattern-matching-in-a-unix-linu
  http://stackoverflow.com/questions/1593051/how-to-programmatically-determine-the-current-checked-out-git-branch
  http://stackoverflow.com/questions/1116992/capturing-output-of-find-print0-into-a-bash-array
  http://stackoverflow.com/questions/1494178/how-to-define-hash-tables-in-bash
  http://stackoverflow.com/questions/951336/how-to-debug-a-bash-script
  http://stackoverflow.com/questions/3685970/check-if-an-array-contains-a-value
  http://stackoverflow.com/questions/911168/how-to-detect-if-my-shell-script-is-running-through-a-pipe
  http://stackoverflow.com/questions/4632028/how-to-create-a-temporary-directory
  http://stackoverflow.com/questions/1731767/bash-recursively-create-nonexistent-subdirectories

source repo
  https://github.com/henriquemoody/string.bash
  http://natelandau.com/bash-scripting-utilities/

example script
  local repo=`basename $(pwd)`
  local circletoken="fooasdf"

  echo creating status token

  local response=`curl "https://circleci.com/api/v1/project/asdf/$repo/token?circle-token=$circletoken" \
    -X POST \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"label":"badge","scope":"status"}' \
    --silent`
  local statustoken=`node -pe 'JSON.parse(process.argv[1]).token' "$response"`

  local badge="[![Circle CI](https://circleci.com/gh/asdf/$repo.svg?style=svg&circle-token=$statustoken)](https://circleci.com/gh/asdf/$repo)"

  echo adding badge to Readme.md

  echo $badge > temp-readme.md
  cat Readme.md >> temp-readme.md
  cp temp-readme.md Readme.md
  rm temp-readme.md

example check if something is running on a port
  netstat -tulpn

example
  echo enabling project
  curl "https://circleci.com/api/v1/project/segmentio/$repo/follow?circle-token=#circletoken" \
    -X POST \
    -H "Accept: application/json" \
    --silent > /dev/null

example default parameter values
  pid=${1:-asdf}
  rate=${2:-fo}
  addr=${3:-192.168.0.0:3000}

  echo "Sending events from $pid to $addr at the rate of $rate/s"
  cat /events.json \
    | throttle $rate \
    | filter "j.projectId='$pid'; return j" \
    | json_to_nsq -t events -a $addr

example previous result
  cd $_ && make init

example previous command
  sudo !!

example replace text in files
  $ grep -rl "stage.segment.com" ./qa | xargs sed -i '' "s/stage.segment.com/stage2.segment.com/g"

example touch all files in directory
  $ find ./client -name "*.js" -exec touch {} \;
