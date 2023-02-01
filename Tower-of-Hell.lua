local reg = getreg() --Credit https://www.youtube.com/@TechHog8984

for i, Function in next, reg do
    if type(Function) == 'function' then
        local info = getinfo(Function)
        
        if info.name == 'kick' then
            if (hookfunction(info.func, function(...)end)) then
                print'succesfully hooked kick'
            else
                print'failed to hook kick'
            end
        end
    end
end

print("Down")
