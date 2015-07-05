package org.apache.commons.codec.binary;

import java.io.FilterInputStream;
import java.io.InputStream;

public class BaseNCodecInputStream
  extends FilterInputStream
{
  private final BaseNCodec baseNCodec;
  private final boolean doEncode;
  private final byte[] singleByte = new byte[1];
  
  protected BaseNCodecInputStream(InputStream paramInputStream, BaseNCodec paramBaseNCodec, boolean paramBoolean)
  {
    super(paramInputStream);
    doEncode = paramBoolean;
    baseNCodec = paramBaseNCodec;
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    for (int i = read(singleByte, 0, 1); i == 0; i = read(singleByte, 0, 1)) {}
    if (i > 0)
    {
      if (singleByte[0] < 0) {
        return singleByte[0] + 256;
      }
      return singleByte[0];
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException();
    }
    if ((paramInt1 < 0) || (paramInt2 < 0)) {
      throw new IndexOutOfBoundsException();
    }
    if ((paramInt1 > paramArrayOfByte.length) || (paramInt1 + paramInt2 > paramArrayOfByte.length)) {
      throw new IndexOutOfBoundsException();
    }
    int j;
    if (paramInt2 == 0) {
      j = 0;
    }
    int i;
    do
    {
      return j;
      i = 0;
      j = i;
    } while (i != 0);
    label94:
    byte[] arrayOfByte;
    if (!baseNCodec.hasData())
    {
      if (!doEncode) {
        break label145;
      }
      i = 4096;
      arrayOfByte = new byte[i];
      i = in.read(arrayOfByte);
      if (!doEncode) {
        break label153;
      }
      baseNCodec.encode(arrayOfByte, 0, i);
    }
    for (;;)
    {
      i = baseNCodec.readResults(paramArrayOfByte, paramInt1, paramInt2);
      break;
      label145:
      i = 8192;
      break label94;
      label153:
      baseNCodec.decode(arrayOfByte, 0, i);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.binary.BaseNCodecInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */