# BottomUp

A syntactic analyzer written in Elixir.

Run `mix deps.get` and then `iex -S mix`:
```elixir
BottomUp.process "prod_rules", "productions"
# Accepted: i+i*i
# Rejected: (i+i)+
# Accepted: (i+i)*i
# Rejected: i+i)
# Accepted: i*((i+i)*i)
# Accepted: (i+i)
# Rejected: f+r
# Rejected: i+
# [:ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok]
```

Check `prod_rules` (first line indicates the starting state) and `productions` (each line is a string to be tested, spaces are optional) to see how to use.

## TODO
- [ ] Write some tests
- [ ] Fix logger
- [ ] Create a CLI interface to transform into a escript
