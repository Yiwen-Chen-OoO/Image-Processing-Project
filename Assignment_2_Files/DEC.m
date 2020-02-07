Dimage = zeros(rowN,colN);

for i = 1:rowN/8
    for j = 1:colN/8
        
        
        zVec = iZZDCTQIm(8*8*(i-1)+j,:);
        Mtx = Vector2ZigzagMtx(iZZDCTQIm(8*8*(i-1)+j,:));
        DCT = Mtx .* iQ;
        iDCT = idct2(DCT);
        Dimage((i-1)*8+1:i*8,(j-1)*8+1:j*8) = iDCT;
        
        
        
        
        
        
        
        
        
    end
end
imshow(uint8(Dimage));