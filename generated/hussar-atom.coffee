'fileTypes' : [
  'hss'
]
'name' : 'hussar'
'patterns' : [
  {
    'include' : '#main'
  }
]
'scopeName' : 'source.hussar'
'uuid' : ''
'repository' : {
  'main' : {
    'patterns' : [
      {
        'match' : '(//.*)'
        'name' : 'comment.hussar'
      }
      {
        'match' : '(while|if|else|return|let|mut|fn|var)'
        'name' : 'keyword.control.hussar'
      }
      {
        'match' : '(true|false)'
        'name' : 'constant.language.hussar'
      }
      {
        'match' : '(\\b[a-zA-Z][a-zA-Z0-9]*)'
        'name' : 'variable.hussar'
      }
      {
        'include' : '#numeric'
      }
      {
        'begin' : '(\\{)'
        'beginCaptures' : {
          '1' : {
            'name' : 'punctuation.hussar'
          }
        }
        'patterns' : [
          {
            'include' : '#main__1'
          }
        ]
        'end' : '(\\})'
        'endCaptures' : {
          '1' : {
            'name' : 'punctuation.hussar'
          }
        }
      }
      {
        'match' : '(;)'
        'name' : 'punctuation.hussar'
      }
      {
        'match' : '(\\+|-|\\*|/)'
        'name' : 'punctuation.hussar'
      }
      {
        'match' : '(=)'
        'name' : 'punctuation.hussar'
      }
      {
        'begin' : '(\\")'
        'beginCaptures' : {
          '1' : {
            'name' : 'punctuation.hussar'
          }
        }
        'contentName' : 'string.hussar'
        'end' : '(\\")'
        'endCaptures' : {
          '1' : {
            'name' : 'punctuation.hussar'
          }
        }
      }
      {
        'begin' : '(\\()'
        'beginCaptures' : {
          '1' : {
            'name' : 'punctuation.hussar'
          }
        }
        'patterns' : [
          {
            'include' : '#main__3'
          }
        ]
        'end' : '(\\))'
        'endCaptures' : {
          '1' : {
            'name' : 'punctuation.hussar'
          }
        }
      }
      {
        'match' : '([^\\s])'
        'name' : 'invalid.illegal.hussar'
      }
    ]
  }
  'main__1' : {
    'patterns' : [
      {
        'include' : '#main'
      }
    ]
  }
  'main__2' : {
    'patterns' : [
    ]
  }
  'main__3' : {
    'patterns' : [
      {
        'include' : '#numeric'
      }
      {
        'match' : '(,)'
        'name' : 'punctuation.hussar'
      }
    ]
  }
  'numeric' : {
    'patterns' : [
      {
        'match' : '(\\b\\d+)'
        'name' : 'constant.numeric.hussar'
      }
    ]
  }
}
