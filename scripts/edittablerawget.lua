for _, v in next, getgc(true) do
  if (type(v) == 'table' and rawget(v, 'ReloadTime')) then
    -- this is probably the table with gun values
    for k in next, v do  -- just loop thru its keys to print other gun values
      print(k)
    end
  end
end








