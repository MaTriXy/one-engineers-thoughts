#!/bin/bash

# http://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux

CLR_ESC="\033["

# All these variables has a function with the same name, but in lower case.
#
CLR_RESET=0             # reset all attributes to their defaults
CLR_RESET_UNDERLINE=24  # underline off
CLR_RESET_REVERSE=27    # reverse off
CLR_DEFAULT=39          # set underscore off, set default foreground color
CLR_DEFAULTB=49         # set default background color

CLR_BOLD=1              # set bold
CLR_BRIGHT=2            # set half-bright (simulated with color on a color display)
CLR_UNDERSCORE=4        # set underscore (simulated with color on a color display)
CLR_REVERSE=7           # set reverse video

CLR_BLACK=30            # set black foreground
CLR_RED=31              # set red foreground
CLR_GREEN=32            # set green foreground
CLR_BROWN=33            # set brown foreground
CLR_BLUE=34             # set blue foreground
CLR_MAGENTA=35          # set magenta foreground
CLR_CYAN=36             # set cyan foreground
CLR_WHITE=37            # set white foreground

CLR_BLACKB=40           # set black background
CLR_REDB=41             # set red background
CLR_GREENB=42           # set green background
CLR_BROWNB=43           # set brown background
CLR_BLUEB=44            # set blue background
CLR_MAGENTAB=45         # set magenta background
CLR_CYANB=46            # set cyan background
CLR_WHITEB=47           # set white background

color_escape() {
  local result="$1"
  until [ -z "$2" ]; do
    if ! [ $2 -ge 0 -a $2 -le 47 ] 2>/dev/null; then
      echo "color_escape: argument \"$2\" is out of range" >&2 && return 1
    fi
      result="${CLR_ESC}${2}m${result}${CLR_ESC}${CLR_RESET}m"
    shift || break
    done
  echo -e "$result"
}

function color_reset           { color_escape "$1" $CLR_RESET;           }
function color_reset_underline { color_escape "$1" $CLR_RESET_UNDERLINE; }
function color_reset_reverse   { color_escape "$1" $CLR_RESET_REVERSE;   }
function color_default         { color_escape "$1" $CLR_DEFAULT;         }
function color_defaultb        { color_escape "$1" $CLR_DEFAULTB;        }
function color_bold            { color_escape "$1" $CLR_BOLD;            }
function color_bright          { color_escape "$1" $CLR_BRIGHT;          }
function color_underscore      { color_escape "$1" $CLR_UNDERSCORE;      }
function color_reverse         { color_escape "$1" $CLR_REVERSE;         }
function color_black           { color_escape "$1" $CLR_BLANK;           }
function color_red             { color_escape "$1" $CLR_RED;             }
function color_green           { color_escape "$1" $CLR_GREEN;           }
function color_brown           { color_escape "$1" $CLR_BROWN;           }
function color_blue            { color_escape "$1" $CLR_BLUE;            }
function color_magenta         { color_escape "$1" $CLR_MAGENTA;         }
function color_cyan            { color_escape "$1" $CLR_CYAN;            }
function color_white           { color_escape "$1" $CLR_WHITE;           }
function color_blackb          { color_escape "$1" $CLR_BLACKB;          }
function color_redb            { color_escape "$1" $CLR_REDB;            }
function color_greenb          { color_escape "$1" $CLR_GREENB;          }
function color_brownb          { color_escape "$1" $CLR_BROWNB;          }
function color_blueb           { color_escape "$1" $CLR_BLUEB;           }
function color_magentab        { color_escape "$1" $CLR_MAGENTAB;        }
function color_cyanb           { color_escape "$1" $CLR_CYANB;           }
function color_whiteb          { color_escape "$1" $CLR_WHITEB;          }
