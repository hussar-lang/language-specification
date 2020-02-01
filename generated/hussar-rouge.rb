# -*- coding: utf-8 -*- #

module Rouge
  module Lexers
    class Hussar < RegexLexer
      title     "hussar"
      tag       'Hussar'
      mimetypes 'text/x-hussar'
      filenames '*.hss'

      state:root do
          rule /(\/\/.*)/, Comment
          rule /(while|if|else|return|let|mut|fn|var)/, Keyword::Reserved
          rule /(true|false)/, Literal
          rule /(\b[a-zA-Z][a-zA-Z0-9]*)/, Name::Variable
          rule /(\b\d+)/, Number
          rule /(\{)/, Punctuation, :main__1
          rule /(;)/, Punctuation
          rule /(\+|-|\*|\/)/, Punctuation
          rule /(=)/, Punctuation
          rule /(\")/, Punctuation, :main__2
          rule /(\()/, Punctuation, :main__3
          rule /([^\s\n\r]/, Generic::Error
          rule /(\n|\r|\r\n)/, String
          rule /./, String
      end

      state:main__1 do
          rule /(\/\/.*)/, Comment
          rule /(while|if|else|return|let|mut|fn|var)/, Keyword::Reserved
          rule /(true|false)/, Literal
          rule /(\b[a-zA-Z][a-zA-Z0-9]*)/, Name::Variable
          rule /(\b\d+)/, Number
          rule /(\{)/, Punctuation, :main__1
          rule /(;)/, Punctuation
          rule /(\+|-|\*|\/)/, Punctuation
          rule /(=)/, Punctuation
          rule /(\")/, Punctuation, :main__2
          rule /(\()/, Punctuation, :main__3
          rule /([^\s\n\r]/, Generic::Error
          rule /(\n|\r|\r\n)/, String
          rule /./, String
      end

      state:main__2 do
          rule /(\n|\r|\r\n)/, String
          rule /./, String
      end

      state:main__3 do
          rule /(\b\d+)/, Number
          rule /(,)/, Punctuation
          rule /(\n|\r|\r\n)/, String
          rule /./, String
      end

    end
  end
end

