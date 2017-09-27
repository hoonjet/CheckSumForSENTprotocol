function list = getCRCtable(bits,polynomial)
% function for calculating n-bit CRC table with polynomial assumes n+1 bits
% bits : 1 x 1 integer
% polynomial : 1 x n binary polynomial [x^(n-1), x^(n-2), ... x, 1]
% list : 1 x n CRC remainder table (index 1 - 2^bits corresponds to 0 - (2^bits)-1)

 numElements = power(2,bits);
 list = zeros(1,numElements); %Table to store CRC-checksum data
 bitStorage = zeros(1,bits*2);
 
 list(1,1) = 0; %remainder of 0 is always 0
 multiplier = 2.^(bits-1:-1:0); %multiplier for getting dec values from bin
 
 for i = 1:numElements-1
     bitStr = dec2bin(i,bits);
     
     %initialize stack
     bitStorage(1:bits) = str2num(bitStr(:));
     bitStorage(bits+1:end) = 0;
        
     firstOne = find(bitStorage==1,1,'first');
    
     while firstOne<=bits %Performing polynomial division
        bitStorage(firstOne:firstOne+length(polynomial)-1) = xor(bitStorage(firstOne:firstOne+length(polynomial)-1),polynomial);    
        firstOne = find(bitStorage==1,1,'first');
     end 
          
     list(1,i+1) = sum(bitStorage(bits+1:end).*multiplier); %store informaton as dec
         
 end

end