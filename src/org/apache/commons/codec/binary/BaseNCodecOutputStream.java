package org.apache.commons.codec.binary;

import java.io.FilterOutputStream;
import java.io.OutputStream;

public class BaseNCodecOutputStream
  extends FilterOutputStream
{
  private final BaseNCodec baseNCodec;
  private final boolean doEncode;
  private final byte[] singleByte = new byte[1];
  
  public BaseNCodecOutputStream(OutputStream paramOutputStream, BaseNCodec paramBaseNCodec, boolean paramBoolean)
  {
    super(paramOutputStream);
    baseNCodec = paramBaseNCodec;
    doEncode = paramBoolean;
  }
  
  private void flush(boolean paramBoolean)
  {
    int i = baseNCodec.available();
    if (i > 0)
    {
      byte[] arrayOfByte = new byte[i];
      i = baseNCodec.readResults(arrayOfByte, 0, i);
      if (i > 0) {
        out.write(arrayOfByte, 0, i);
      }
    }
    if (paramBoolean) {
      out.flush();
    }
  }
  
  public void close()
  {
    if (doEncode) {
      baseNCodec.encode(singleByte, 0, -1);
    }
    for (;;)
    {
      flush();
      out.close();
      return;
      baseNCodec.decode(singleByte, 0, -1);
    }
  }
  
  public void flush()
  {
    flush(true);
  }
  
  public void write(int paramInt)
  {
    singleByte[0] = ((byte)paramInt);
    write(singleByte, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
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
    if (paramInt2 > 0)
    {
      if (!doEncode) {
        break label77;
      }
      baseNCodec.encode(paramArrayOfByte, paramInt1, paramInt2);
    }
    for (;;)
    {
      flush(false);
      return;
      label77:
      baseNCodec.decode(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.binary.BaseNCodecOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */