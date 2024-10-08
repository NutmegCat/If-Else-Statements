answer = questdlg('Would you like a dessert?', ...
    'Dessert Menu', ...
    "Ice cream","Cake","No thank you","No thank you");
% Handle response
if (answer == "Ice cream")
    disp([answer ' coming right up.'])
    dessert = 1;
elseif (answer == "Cake")
    disp([answer ' coming right up.'])
    dessert = 2;
else
    disp('I''ll bring you your cheque.')
    dessert = 0;
end