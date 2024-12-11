```elixir
list = [1, 2, 3, 4, 5]

# Solution using Enum.reduce
result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    acc
  else
    [x | acc]
  end
end)
IO.puts("Result: #{Enum.reverse(result)}")

# Alternative solution for more controlled process exiting
# If you need to halt the entire process for the given condition,
# consider a more explicit way to handle it.

# Example
if Enum.any?(list, &( &1 == 3)) do
  IO.puts("Found the value 3! Exiting...")
  Process.exit(self(), :normal) # This is more controlled, you're aware of the exit
  # ... Add any needed cleanup or signaling here...
else
  Enum.each(list, fn x -> IO.puts(x) end)
end
```