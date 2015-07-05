package org.apache.commons.codec.binary;

import java.io.OutputStream;

public class Base32OutputStream
  extends BaseNCodecOutputStream
{
  public Base32OutputStream(OutputStream paramOutputStream)
  {
    this(paramOutputStream, true);
  }
  
  public Base32OutputStream(OutputStream paramOutputStream, boolean paramBoolean)
  {
    super(paramOutputStream, new Base32(false), paramBoolean);
  }
  
  public Base32OutputStream(OutputStream paramOutputStream, boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    super(paramOutputStream, new Base32(paramInt, paramArrayOfByte), paramBoolean);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.binary.Base32OutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */