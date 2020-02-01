/*
* To try in Ace editor, copy and paste into the mode creator
* here : http://ace.c9.io/tool/mode_creator.html
*/

define(function(require, exports, module) {
"use strict";
var oop = require("../lib/oop");
var TextHighlightRules = require("./text_highlight_rules").TextHighlightRules;
/* --------------------- START ----------------------------- */
var HussarHighlightRules = function() {
this.$rules = {
"start" : [
   {
      "token" : "comment",
      "regex" : "(//.*)"
   },
   {
      "token" : "keyword.control",
      "regex" : "(while|if|else|return|let|mut|fn|var)"
   },
   {
      "token" : "constant.language",
      "regex" : "(true|false)"
   },
   {
      "token" : "variable",
      "regex" : "(\\b[a-zA-Z][a-zA-Z0-9]*)"
   },
   {
      "token" : "constant.numeric",
      "regex" : "(\\b\\d+)"
   },
   {
      "token" : "punctuation",
      "regex" : "(\\{)",
      "push" : "main__1"
   },
   {
      "token" : "punctuation",
      "regex" : "(;)"
   },
   {
      "token" : "punctuation",
      "regex" : "(\\+|-|\\*|/)"
   },
   {
      "token" : "punctuation",
      "regex" : "(=)"
   },
   {
      "token" : "punctuation",
      "regex" : "(\\\")",
      "push" : "main__2"
   },
   {
      "token" : "punctuation",
      "regex" : "(\\()",
      "push" : "main__3"
   },
   {
      "token" : "invalid.illegal",
      "regex" : "([^\\s])"
   },
   {
      defaultToken : "text",
   }
], 
"main__1" : [
   {
      "token" : "punctuation",
      "regex" : "(\\})",
      "next" : "pop"
   },
   {
      "token" : "comment",
      "regex" : "(//.*)"
   },
   {
      "token" : "keyword.control",
      "regex" : "(while|if|else|return|let|mut|fn|var)"
   },
   {
      "token" : "constant.language",
      "regex" : "(true|false)"
   },
   {
      "token" : "variable",
      "regex" : "(\\b[a-zA-Z][a-zA-Z0-9]*)"
   },
   {
      "token" : "constant.numeric",
      "regex" : "(\\b\\d+)"
   },
   {
      "token" : "punctuation",
      "regex" : "(\\{)",
      "push" : "main__1"
   },
   {
      "token" : "punctuation",
      "regex" : "(;)"
   },
   {
      "token" : "punctuation",
      "regex" : "(\\+|-|\\*|/)"
   },
   {
      "token" : "punctuation",
      "regex" : "(=)"
   },
   {
      "token" : "punctuation",
      "regex" : "(\\\")",
      "push" : "main__2"
   },
   {
      "token" : "punctuation",
      "regex" : "(\\()",
      "push" : "main__3"
   },
   {
      "token" : "invalid.illegal",
      "regex" : "([^\\s])"
   },
   {
      defaultToken : "text",
   }
], 
"main__2" : [
   {
      "token" : "punctuation",
      "regex" : "(\\\")",
      "next" : "pop"
   },
   {
      defaultToken : "string",
   }
], 
"main__3" : [
   {
      "token" : "punctuation",
      "regex" : "(\\))",
      "next" : "pop"
   },
   {
      "token" : "constant.numeric",
      "regex" : "(\\b\\d+)"
   },
   {
      "token" : "punctuation",
      "regex" : "(,)"
   },
   {
      defaultToken : "text",
   }
]
};
this.normalizeRules();
};
/* ------------------------ END ------------------------------ */
oop.inherits(HussarHighlightRules, TextHighlightRules);
exports.HussarHighlightRules = HussarHighlightRules;
});
