https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
-- Sample black-box test suite. Feel free to adapt, or start from scratch.

-- Do NOT import from your ModImpl files here. These tests should work with
-- any implementation of the APpy APIs. Put any white-box tests in
-- suite1/WhiteBox.hs.
import Definitions
import Parser
import Transformer

import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain $ localOption (mkTimeout 1000000) tests

tests = testGroup "Smoke tests" [
  testGroup "Parser" [
    testCase "Tiny spec" $
      parseSpec "---\n S ::= S \"a\" {_1+1} | \"b\" {0}.\n _ ::= {()}." @?=
       Right ("", [("S", EBar (ESeq [ESimple (SNTerm "S"), ESimple (SLit "a")] (AUser "_1+1"))
                        (ESeq [ESimple (SLit "b")] (AUser "0"))),
             ("_", ESeq [] (AUser "()"))])
    ]]
