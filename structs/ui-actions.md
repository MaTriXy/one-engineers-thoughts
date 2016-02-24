
page /login
  action login
    given user
    given project
    start /login
    task enter email, from user
    task enter password, from user
    task submit form
    assert on /{{ user }}/{{ project }}/integrations
  skip action click forgot password
  skip action click signup

page /signup
  action signup
    potential user
    start /signup
    task enter name, from user
    task enter username, from user
    task enter email, from user
    task enter password, from user
    task enter source, from user
    task submit form
    assert on /{{ user }}/new-organization
    task refresh
    assert on /{{ user }}/new-organization
  action visit tos
  action visit policy

skip page /forgot
  action send reset email
    given user
    start /forgot
    task enter email, from user
    task submit form

skip page /reset
  action reset email
    start /reset?token={{ token }}

page /:user/new-project
  action create project
    given user
      login user1
      password user1
    potential project
      slug proj1
    start /login
    task login
      use login, from user
      use password, from user
    task visit /{{ user }}/new-project
    task enter name, use slug, from project
    task submit form
    assert on /{{ user }}/{{ project }}/setup

page /:user/new-organization
  action create organization
    given user
      login user2
      password user2
    potential organization
      name org1
      login org1
      email org1@segment.com
    start /login
    task login
      use login, from user
      use password, from user
    task visit /{{ user }}/new-organization
    task enter name, from organization
    task enter username, use login, from organization
    task enter email, from organization
    task submit form
    assert on /{{ user }}/{{ organization }}/invite

page /:user/:org/invite
  action invite user
    given user
    given organization
    given invited, type user
    start /login
    task login
    task visit /{{ user }}/{{ organization }}/invite
    task enter email
    task click invite
    assert email, below input
    task click finish
    assert on /{{ organization }}/new-project

skip page /:org/new-project
  action create project
    start /login
    task login
    task visit /{{ organization }}/new-project
    task enter name
    task enter url
    task submit form

skip page /:user/:project/setup
  action click integrations
    task click button integrations
    assert on /:user/:project/integrations
  action click debugger
    task click button debugger
    assert on /:user/:project/debugger

page /:user/:project/integrations
  action open integration
    given user
    given project
    start /login
    task login
    task visit /{{ user }}/{{ project }}/integrations
    task click tile
    assert on /{{ user }}/{{ project }}/integrations#{{ integration }}
  skip action edit integration
    given user
    given project
    start /login
    task login
    task visit /{{ user }}/{{ project }}/integrations
    task enter text into any field
    task press save
  action close integration
    given user
    given project
    start /login
    task login
    task visit /{{ user }}/{{ project }}/integrations#{{ integration }}
    task click outside form
    assert on /:user/:project/integrations
  action toggle integration
    given user
    given project
    start /login
    task login
    task visit /{{ user }}/{{ project }}/integrations
    task click toggle
    assert toggle on
    task refresh
    assert toggle on
    task click toggle
    assert toggle off
    task refresh
    assert toggle off
  action filter integrations
    given user
    given project
    start /login
    task login
    task visit /{{ user }}/{{ project }}/integrations
    task enter text into filter
    assert only see matching integrations
    task remove filter text
    assert see all integrations
  skip action sort integrations
    start /login
    task login
    task visit /{{ user }}/{{ project }}/integrations
    task change sort value

page /:user/settings
  skip action click tab
  action change settings profile
    given user
    start /login
    task login
    task visit /{{ user }}/settings
    task change name
    task change email
    task submit form
    assert success bar
    task refresh
    assert changed name
    assert changed email
  action change username
    given user
    start /login
    task login
    task visit /{{ user }}/settings
    task change username
    task submit form
    assert success bar
    assert url /{{ changed }}/settings
  action delete account
    given user
    start /login
    task login
    task visit /{{ user }}/settings
    task click button delete account
    task click confirmation
    task visit /{{ user }}/settings
    assert page 404

page /:user/settings/billing
  action add card
    given user
    potential card
    start /login
    task login
    task visit /{{ user }}/settings/billing
    task click add card button
    task enter number
    task enter expiration
    task enter cvc
    task submit form
    task wait a few seconds
    assert see card summary in "Credit Card" section
  todo action remove card
  skip action view integration
    start /login
    task login
    task visit /{{ user }}/settings/billing
  action add info billing
    given user
    start /login
    task login
    task visit /{{ user }}/settings/billing
    task enter info
    task submit form
  action change plan
    given user
    start /login
    task login
    task visit /{{ user }}/settings/billing
    task click button select

page /:user/settings/payments
    start /login
    task login
    task visit /{{ user }}/settings/payments

page /:user/settings/password
  action change password
    start /login
    task login
    task visit /{{ user }}/settings/password
    task enter new password
    task enter new password confirmation
    task submit form
  action reset password
    start /login
    task login
    task visit /{{ user }}/settings/password
    task click button reset password
    task click confirmation

page /:user/:project/settings
  action change name
    start /login
    task login
    task visit /{{ user }}/{{ project }}/settings
    task change name
    task submit form
  action delete project
    start /login
    task login
    task visit /{{ user }}/{{ project }}/settings
    task click button delete project
    task click confirmation
  action click tab
    start /login
    task login
    task visit /{{ user }}/{{ project }}/settings

page /:user/:project/settings/keys
  action generate key write
    start /login
    task login
    task visit /{{ user }}/{{ project }}/settings/keys
    task click button generate new key
  action generate key read
    start /login
    task login
    task visit /{{ user }}/{{ project }}/settings/keys
    task click button generate new key
  action copy key write
    start /login
    task login
    task visit /{{ user }}/{{ project }}/settings/keys
  action copy key read
    start /login
    task login
    task visit /{{ user }}/{{ project }}/settings/keys
  action copy id project
    start /login
    task login
    task visit /{{ user }}/{{ project }}/settings/keys

page /:user/:project/settings/owner
  action change owner
    start /login
    task login
    task visit /{{ user }}/{{ project }}/settings/owner
    task open dropdown
    task select different value
    task submit form

page /:user/:project/settings/collaborators
  action add collaborator
    start /login
    task login
    task visit /{{ user }}/{{ project }}/settings/collaborators
    task enter email
    task submit form

page /:user/:project/debugger
  action pause
    start /login
    task login
    task visit /{{ user }}/{{ project }}/debugger
    task click button pause
  action expand event

component navigation
  action hover icon
  action click help
  action click documentation
  action open dropdown project
  action open dropdown account
  action open dialog redshift

component sidebar account
  action create organization
  action visit account

component dropdown account
  action click settings
  action click new project
  action click new organization
  action click logout

component dropdown project
  action click project
  action click new project
  action click new organization
