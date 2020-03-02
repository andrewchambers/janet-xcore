# janet-xcore

Proposed and experimental additions to the janet stdlibrary.

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

```
  (error-match (foobar)
    [:ok v] v
    ([:error err] (predicate? err)) nil)
```