grammar MyGrammar {
    token TOP     { <sign> <digits> <decimal>? }
    token sign    { <[+-]>?                    }
    token digits  { \d+                        }
    token decimal { \. <digits>                }
}

say MyGrammar.parse: '250.42';
