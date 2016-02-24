
let string, read path, as string
_('let', _('string'), _(read _(path), _(as _(string)))
// replace(/[a-z0-9]+/, "'\\0'")
'let' 'string', 'read' 'path', 'as' 'string'
// replace(/ '/, " _('")
_('let' _('string', _('read' _('path', _('as' _('string'
// replace(/[a-z0-9]+'/, "\\0')")
_('let') _('string'), _('read') _('path'), _('as') _('string')
// replace(/[a-z0-9]+'/, "\\0',")
_('let', _('string', _('read', _('path', _('as', _('string'
// replace(/[a-z0-9]+',/, "\\0'),")
_('let' _('string'), _('read' _('path'), _('as' _('string'
// replace(/[a-z0-9]+'$/, "\\0')")
_('let' _('string'), _('read' _('path'), _('as' _('string')
// replace(/([a-z0-9]+') +/, "\\1', ")
_('let', _('string'), _('read', _('path'), _('as', _('string')
// ?
_('let', _('string'), _('read', _('path'), _('as', _('string'))))

// here is a quick way to convert it to javascript!
_('let', _('string'), _('read', _('path'), _('as', _('string'))))
_('visit', _('character'), _('in', _('string')))
_(_('when', _('expected', _('character')), _('remember')))
_(_('otherwise', _('skip')))

// replace(/[a-z0-9]+/, "'\\0'")
_(let, string, _(read, path, _(as, string)))
_(visit, _(character), _(in, string))
_(_(when, _(expected, character), _(remember)))
_(_(otherwise, skip))

// replace(/, +/, ', _(')
// replace(/^/, '_(')
// hard part is adding closing braces
let string, _(read path, _(as string
visit character, in, string
_(_(when, _(expected, character), _(remember)))
_(_(otherwise, skip))
