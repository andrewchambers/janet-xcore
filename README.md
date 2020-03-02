# janet-xcore

Rejected, proposed and/or experimental additions to the janet stdlibrary.

# Usage

```
(use xcore)
```

# Functions

## deep-merge

```
(deep-merge @{:a {:b 1}} {:a {:c 2}})
@{:a @{:b 1 :c 2}}
```

## error-match

https://github.com/janet-lang/janet/issues/289

```
  (error-match (foobar)
    [:ok v] v
    ([:error err] (predicate? err)) nil)
```