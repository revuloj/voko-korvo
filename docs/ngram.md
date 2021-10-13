# n-gramoj

## Trovi citaĵojn

Por trovi citaĵojn foje serĉado per unuopaj vortoj ne fidinde funkcias, ĉar eble la citanto ŝanĝis finaĵojn kaj vortordon. Serĉad per regulesprimoj ankaŭ estas malfacile en tiuj okazoj. Rimedo kiu surprize beone funkcias en tiu cirkonstanco estas dishaki la tekston en samlongajn partoj, ekz-e de po kvar literoj kaj serci ilin en la kandidataj tekstoj...:

```
ngrams(Atom,Len,NGrams) :- 
  setof(NGram,A^B^sub_atom(Atom,B,Len,A,NGram),NGrams).
```
  

