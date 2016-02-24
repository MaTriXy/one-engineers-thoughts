
## experiments

```coffee
class javascript
```

- code generator, or like code snippets
- https://atom.io/packages/javascript-snippets

https://github.com/RailsApps/rails-composer/blob/master/composer.rb

```coffee
'.source.js':
  'console.log':
    'prefix': 'log'
    'body': 'console.log(${1:"crash"});$2'

# scope
  # name
    # tab trigger
    # body
```

```coffee
snippet javascript
  name 'console.log'
  key log
  body
    console.log(${1:'foo'});$2
```

Then, the `body` is like alias to `string javascript`, so you can write it without any quotes.

```coffee
snippet javascript
  name 'console.log'
  key log
  body
    console.log({{ a 'foo' }});{{ b }}
```

Where `a`, `b`, ... are the order of the steps.

```coffee
snippet javascript log
  shortcut log
  property text, default 'foo'
  property end
  body
    console.log({{ text }});{{ end }}
```

```coffee
snippet javascript function
  property name
  property arguments
  property end
  shortcut fn
  body
    function {{ name }} ({{ arguments }}) {
      {{ end }}
    }

snippet javascript function anonymous
  property arguments
  property end
  shortcut afn
  body
    function({{ arguments }}){
      {{ end }}
    }

snippet javascript function prototype
  property constructor, default 'ClassName'
  property arguments
  property name
  property end
  shortcut pr
  body
    {{ constructor }}.prototype.{{ name }} = function({{ arguments }}){
      {{ end }}
    };

snippet javascript function wrapper
  property end
  shortcut wr
  body
    (function(window, document, undefined){
      {{ end }}
    })(window, document);

snippet javascript interval
  property delay
  property end
  shortcut si
  body
    setInterval(function(){
      {{ end }}
    }, {{ delay }});

snippet javascript timeout
  property delay
  property end
  shortcut st
  body
    setTimeout(function(){
      {{ end }}
    }, {{ delay }});

snippet javascript dom text
  property element
  property content
  shortcut tc
  body
    {{ element }}.textContent = '{{ content }}';

snippet javascript loop for
  property length, default 10
  property end
  body
    for (var i = 0, n = {{ length }}; i < n; i++) {
      {{ end }}
    }

# module dependencies

snippet javascript
  shortcut md
  body

    /**
     * Module dependencies.
     */

```

## style experiments

```coffee
# somehow, this would isolate the code and figure out some context stuff
style javascript object
  property key
  property value
  body
    var {{ key }} = {{ value }};
    {
      {{ key }}: {{ key }}
    }
```

http://blog.leahhanson.us/julia-introspects.html

```coffee
snippet javascript analytics
  property event
  property end
  shortcut t
  body
    analytics.track('{{ event }}');{{ end }}
```
