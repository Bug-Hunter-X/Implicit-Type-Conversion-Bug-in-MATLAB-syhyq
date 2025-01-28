function result = myFunction(input)
% This function demonstrates a potential issue with implicit type conversion in MATLAB.
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
result1 = myFunction(input1); 
input2 = '12'; % this is a string
result2 = myFunction(input2); % Implicit conversion leads to unexpected behavior