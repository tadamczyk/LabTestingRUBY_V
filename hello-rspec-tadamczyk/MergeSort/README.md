# MergeSort - projekt na zaliczenie

__MergeSort__ - implementacja sortowania przez scalanie stanowiąca projekt na zaliczenie. Na projekt składają się testy rozwiązania napisane w RSpec oraz rozwiązanie problemu, jakim jest wykonanie sortowania przez scalanie na tablicach jednowymiarowych zawierających elementy różnego typu danych, napisane w języku Ruby.

Cechy algorytmu sortowania przez scalanie:

| Złożoność obliczeniowa optymistyczna | Złożoność obliczeniowa typowa | Złożoność obliczeniowa pesymistyczna | Sortowanie w miejscu | Stabilność |
:--:|:--:|:--:|:--:|:--:
| *O(n log n)* | *O(n log n)* | *O(n log n)* | *NIE* | *TAK*

****
****

Struktura katalogu:

> [README](README.md)  
> [Gemfile](Gemfile)  
> [Gemfile.lock](Gemfile.lock)

> [lib](lib)
>> [merge](lib/merge.rb)  
>> [merge_sort](lib/merge_sort.rb)

> [spec](spec)
>> [merge_spec](spec/merge_spec.rb)  
>> [merge_sort_spec](spec/merge_sort_spec.rb)  
>> [int_array_merge_sort_spec](spec/int_array_merge_sort_spec.rb)  
>> [float_array_merge_sort_spec](spec/float_array_merge_sort_spec.rb)  
>> [string_array_merge_sort_spec](spec/string_array_merge_sort_spec.rb)

Lista użytych gem'ów:

> [*rspec (= 3.7.0)*](https://rubygems.org/gems/rspec/versions/3.7.0)  
> [*simplecov (~> 0.13.0)*](https://rubygems.org/gems/simplecov/versions/0.13.0)