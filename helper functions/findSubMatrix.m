function [rout,cout]= findSubMatrix(A,B)
    %ONLY USE FOR DEBUGGIN!!!
    %this is also a static function in object, but need it outside to run
    %with scripts
    %use this to find a submatrix B in a larger matrix A
    % engine
    szA = size(A) ;
    szB = size(B) ;
    szS = szA - szB + 1 ;
    tf = false(szA) ;
    for r = 1:szS(1)
        for c = 1:szS(2)
            tf(r,c) = isequal(A(r:r+szB(1)-1,c:c+szB(2)-1),B) ;
        end
    end
    [rout,cout] = find(tf);
end