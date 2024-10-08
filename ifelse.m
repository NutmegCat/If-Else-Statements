answer = questdlg('Would you like a dessert?', ...
    'Dessert Menu', ...
    "Ice cream","Cake","No thank you","No thank you");
% Handle response
switch answer
    case "Ice cream"
        disp([answer ' coming right up.'])
        dessert = 1;
    case "Cake"
        disp([answer ' coming right up.'])
        dessert = 2;
    case "No thank you"
        disp('I''ll bring you your cheque.')
        dessert = 0;
end