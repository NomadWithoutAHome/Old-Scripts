function mGod()
    for _, v in pairs(game:GetService("ReplicatedStorage").ModulesClient:GetChildren()) do 
        if v:IsA('ModuleScript') and v.Name == 'SnowballProjectileClient' then 
            for _, s in pairs(getgc()) do 
                if type(s) == "function" and getfenv(s).script == game:GetService("ReplicatedStorage").ModulesClient[v.Name] then 
                    if debug.getinfo(s).name == 'minionSnowball' then 
                        hookfunction(s, function(...)
                            print('Nice, try minions cant hurt us!')
                            return 'No Thank you.';
                        end)
                    end
                end
            end
        end
    end
end

mGod()