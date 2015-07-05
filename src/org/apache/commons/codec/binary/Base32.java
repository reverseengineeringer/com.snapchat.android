package org.apache.commons.codec.binary;

public class Base32
  extends BaseNCodec
{
  private static final int BITS_PER_ENCODED_BYTE = 5;
  private static final int BYTES_PER_ENCODED_BLOCK = 8;
  private static final int BYTES_PER_UNENCODED_BLOCK = 5;
  private static final byte[] CHUNK_SEPARATOR = { 13, 10 };
  private static final byte[] DECODE_TABLE = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 63, -1, -1, 26, 27, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 };
  private static final byte[] ENCODE_TABLE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 54, 55 };
  private static final byte[] HEX_DECODE_TABLE = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 63, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32 };
  private static final byte[] HEX_ENCODE_TABLE = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86 };
  private static final int MASK_5BITS = 31;
  private long bitWorkArea;
  private final int decodeSize;
  private final byte[] decodeTable;
  private final int encodeSize;
  private final byte[] encodeTable;
  private final byte[] lineSeparator;
  
  public Base32()
  {
    this(false);
  }
  
  public Base32(int paramInt)
  {
    this(paramInt, CHUNK_SEPARATOR);
  }
  
  public Base32(int paramInt, byte[] paramArrayOfByte)
  {
    this(paramInt, paramArrayOfByte, false);
  }
  
  public Base32(int paramInt, byte[] paramArrayOfByte, boolean paramBoolean) {}
  
  public Base32(boolean paramBoolean)
  {
    this(0, null, paramBoolean);
  }
  
  void decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (eof) {
      return;
    }
    if (paramInt2 < 0) {
      eof = true;
    }
    int i = 0;
    for (;;)
    {
      int j;
      if (i < paramInt2)
      {
        j = paramArrayOfByte[paramInt1];
        if (j == 61) {
          eof = true;
        }
      }
      else
      {
        if ((!eof) || (modulus < 2)) {
          break;
        }
        ensureBufferSize(decodeSize);
      }
      switch (modulus)
      {
      default: 
        return;
      case 2: 
        paramArrayOfByte = buffer;
        paramInt1 = pos;
        pos = (paramInt1 + 1);
        paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea >> 2 & 0xFF));
        return;
        ensureBufferSize(decodeSize);
        if ((j >= 0) && (j < decodeTable.length))
        {
          j = decodeTable[j];
          if (j >= 0)
          {
            modulus = ((modulus + 1) % 8);
            long l = bitWorkArea;
            bitWorkArea = (j + (l << 5));
            if (modulus == 0)
            {
              byte[] arrayOfByte = buffer;
              j = pos;
              pos = (j + 1);
              arrayOfByte[j] = ((byte)(int)(bitWorkArea >> 32 & 0xFF));
              arrayOfByte = buffer;
              j = pos;
              pos = (j + 1);
              arrayOfByte[j] = ((byte)(int)(bitWorkArea >> 24 & 0xFF));
              arrayOfByte = buffer;
              j = pos;
              pos = (j + 1);
              arrayOfByte[j] = ((byte)(int)(bitWorkArea >> 16 & 0xFF));
              arrayOfByte = buffer;
              j = pos;
              pos = (j + 1);
              arrayOfByte[j] = ((byte)(int)(bitWorkArea >> 8 & 0xFF));
              arrayOfByte = buffer;
              j = pos;
              pos = (j + 1);
              arrayOfByte[j] = ((byte)(int)(bitWorkArea & 0xFF));
            }
          }
        }
        i += 1;
        paramInt1 += 1;
      }
    }
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea >> 7 & 0xFF));
    return;
    bitWorkArea >>= 4;
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea >> 8 & 0xFF));
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea & 0xFF));
    return;
    bitWorkArea >>= 1;
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea >> 16 & 0xFF));
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea >> 8 & 0xFF));
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea & 0xFF));
    return;
    bitWorkArea >>= 6;
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea >> 16 & 0xFF));
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea >> 8 & 0xFF));
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea & 0xFF));
    return;
    bitWorkArea >>= 3;
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea >> 24 & 0xFF));
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea >> 16 & 0xFF));
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea >> 8 & 0xFF));
    paramArrayOfByte = buffer;
    paramInt1 = pos;
    pos = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = ((byte)(int)(bitWorkArea & 0xFF));
  }
  
  void encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (eof) {}
    for (;;)
    {
      return;
      if (paramInt2 < 0)
      {
        eof = true;
        if ((modulus != 0) || (lineLength != 0))
        {
          ensureBufferSize(encodeSize);
          paramInt1 = pos;
          switch (modulus)
          {
          }
          for (;;)
          {
            paramInt2 = currentLinePos;
            currentLinePos = (pos - paramInt1 + paramInt2);
            if ((lineLength <= 0) || (currentLinePos <= 0)) {
              break;
            }
            System.arraycopy(lineSeparator, 0, buffer, pos, lineSeparator.length);
            pos += lineSeparator.length;
            return;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 3) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea << 2) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            continue;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 11) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 6) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 1) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea << 4) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            continue;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 19) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 14) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 9) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 4) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea << 1) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
            continue;
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 27) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 22) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 17) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 12) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 7) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea >> 2) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = encodeTable[((int)(bitWorkArea << 3) & 0x1F)];
            paramArrayOfByte = buffer;
            paramInt2 = pos;
            pos = (paramInt2 + 1);
            paramArrayOfByte[paramInt2] = 61;
          }
        }
      }
      else
      {
        int i = 0;
        while (i < paramInt2)
        {
          ensureBufferSize(encodeSize);
          modulus = ((modulus + 1) % 5);
          int k = paramArrayOfByte[paramInt1];
          int j = k;
          if (k < 0) {
            j = k + 256;
          }
          bitWorkArea = ((bitWorkArea << 8) + j);
          if (modulus == 0)
          {
            byte[] arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[((int)(bitWorkArea >> 35) & 0x1F)];
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[((int)(bitWorkArea >> 30) & 0x1F)];
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[((int)(bitWorkArea >> 25) & 0x1F)];
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[((int)(bitWorkArea >> 20) & 0x1F)];
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[((int)(bitWorkArea >> 15) & 0x1F)];
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[((int)(bitWorkArea >> 10) & 0x1F)];
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[((int)(bitWorkArea >> 5) & 0x1F)];
            arrayOfByte = buffer;
            j = pos;
            pos = (j + 1);
            arrayOfByte[j] = encodeTable[((int)bitWorkArea & 0x1F)];
            currentLinePos += 8;
            if ((lineLength > 0) && (lineLength <= currentLinePos))
            {
              System.arraycopy(lineSeparator, 0, buffer, pos, lineSeparator.length);
              pos += lineSeparator.length;
              currentLinePos = 0;
            }
          }
          i += 1;
          paramInt1 += 1;
        }
      }
    }
  }
  
  public boolean isInAlphabet(byte paramByte)
  {
    return (paramByte >= 0) && (paramByte < decodeTable.length) && (decodeTable[paramByte] != -1);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.binary.Base32
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */