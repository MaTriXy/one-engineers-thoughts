
source complete
  https://github.com/react-toolbox/react-toolbox/tree/master/components

source menu
  https://github.com/joefitzgerald/go-plus/blob/master/menus/go-plus.cson

menu
  label Packages
  submenu
    label Go Plus
    submenu
      label Display Go Information
        command 'golang:goinfo'
      label Get Missing Tools
        command 'golang:getmissingtools'
      label Update Tools
        command 'golang:updatetools'
      label Go To Definition
        command 'golang:godef'
      label Format File
        command 'golang:gofmt'
      label Vet File
        command 'golang:govet'
      label Lint File
        command 'golang:golint'
      label Check File Syntax
        command 'golang:gobuild'
      label Show Test Coverage
        command 'golang:gocover'
      label Clear Test Coverage
        command 'golang:cleargocover'

