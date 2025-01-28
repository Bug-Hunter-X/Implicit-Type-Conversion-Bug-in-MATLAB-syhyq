function result = myFunctionImproved(input)
% This improved function explicitly handles type conversion to avoid unexpected behavior.
  if ischar(input)
    try
      inputNum = str2double(input);
    catch
      error('Input must be a number or a convertible string.');
    end
    input = inputNum;
  end
  
  if input > 10
    result = input * 2; 
  elseif input > 5
    result = input + 5; 
  else
    result = input; 
  end
end

% Example usage:
input1 = 12; % This is a double
result1 = myFunctionImproved(input1); 
input2 = '12'; % This is a string
result2 = myFunctionImproved(input2); % Explicit type checking ensures consistent behavior.