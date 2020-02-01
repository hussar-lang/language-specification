from pygments.lexer import RegexLexer, bygroups
from pygments.token import *

import re

__all__=['HussarLexer']

class HussarLexer(RegexLexer):
    name = 'Hussar'
    aliases = ['hussar']
    filenames = ['*.hss']
    flags = re.MULTILINE | re.UNICODE

    tokens = {
        'root' : [
            (u'(//.*)', bygroups(Comment)),
            (u'(while|if|else|return|let|mut|fn|var)', bygroups(Keyword.Reserved)),
            (u'(true|false)', bygroups(Literal)),
            (u'(\\b[a-zA-Z][a-zA-Z0-9]*)', bygroups(Name.Variable)),
            (u'(\\b\\d+)', bygroups(Number)),
            (u'(\\{)', bygroups(Punctuation), 'main__1'),
            (u'(;)', bygroups(Punctuation)),
            (u'(\\+|-|\\*|/)', bygroups(Punctuation)),
            (u'(=)', bygroups(Punctuation)),
            (u'(\\\")', bygroups(Punctuation), 'main__2'),
            (u'(\\()', bygroups(Punctuation), 'main__3'),
            (u'([^\\s\\n\\r])', bygroups(Generic.Error)),
            ('(\n|\r|\r\n)', String),
            ('.', String),
        ], 
        'main__1' : [
            (u'(//.*)', bygroups(Comment)),
            (u'(while|if|else|return|let|mut|fn|var)', bygroups(Keyword.Reserved)),
            (u'(true|false)', bygroups(Literal)),
            (u'(\\b[a-zA-Z][a-zA-Z0-9]*)', bygroups(Name.Variable)),
            (u'(\\b\\d+)', bygroups(Number)),
            (u'(\\{)', bygroups(Punctuation), 'main__1'),
            (u'(;)', bygroups(Punctuation)),
            (u'(\\+|-|\\*|/)', bygroups(Punctuation)),
            (u'(=)', bygroups(Punctuation)),
            (u'(\\\")', bygroups(Punctuation), 'main__2'),
            (u'(\\()', bygroups(Punctuation), 'main__3'),
            (u'([^\\s\\n\\r])', bygroups(Generic.Error)),
            ('(\n|\r|\r\n)', String),
            ('.', String),
        ], 
        'main__2' : [
            ('(\n|\r|\r\n)', String),
            ('.', String),
        ], 
        'main__3' : [
            (u'(\\b\\d+)', bygroups(Number)),
            (u'(,)', bygroups(Punctuation)),
            ('(\n|\r|\r\n)', String),
            ('.', String),
        ]
    }

