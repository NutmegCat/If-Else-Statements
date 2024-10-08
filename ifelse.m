answer = questdlg('Would you like a doughnut?', ...
    'Dessert Menu', ...
    "Plain","Chocolate","Raspberry", "Raspberry");

% Handle response
if (answer == "Plain")
    disp([answer ' ... Yum'])
    dessert = 1;
elseif (answer == "Chocolate")
    disp([answer ', Great!'])
    dessert = 2;
else
    disp([answer ', OK!'])
    dessert = 0;
end