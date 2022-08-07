while wait() do
for _, v in pairs(game:GetService("ReplicatedStorage").ModulesClient:GetChildren()) do
    if v:IsA("ModuleScript") and v.Name == "DoubleJumpClient" then
       local env = getsenv(v)
       for a, b in pairs(env) do 
           if debug.getinfo(b).name == 'onJumpRequest' then
               hookfunction(b, function(...)
                            print('Nice, try minions cant hurt us!')
                            return 'No Thank you.';
                        end)
              end
           end
       end
    end
end


                        
                    
