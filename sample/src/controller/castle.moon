import concat, insert from table

double_args = (...) ->
  [x * 2 for x in *{...}]

tuples = [{k, v} for k,v in ipairs my_table]

