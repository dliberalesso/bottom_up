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

Check `prod_rules` and `productions` to see how to use.
