{TEST 6.4.5-12, CLASS=DEVIANCE}

{: This test checks if comparison of strings, whose lengths
   differ, is rejected. }
{  The Pascal Standard permits compatibility only between
   string-types having the same number of components.
   Some processors may allow compatibility between string-types
   with different numbers of components. }
{V3.1: Writes revised. }

program t6p4p5d12(output);
begin
   if 'CAT' < 'HOUND' then writeln(' DEVIATES...6.4.5-12,STRING(1)')
      else writeln(' DEVIATES...6.4.5-12,STRING(2)')
end.
