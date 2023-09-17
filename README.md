# Java Subset Compiler

### Build and Run

```
# compile and build
make build 
make joosc

# compile java files with generated executable
./joosc <Java file(s)> -opt-reg-only

# run java program
./main; echo "Return value: $$?"
```

Run `make example` for a bubblesort example.

### Flags

`-opt-reg-only` enable register allocation

`-opt-none`     disable register allocation and other compiler optimizations