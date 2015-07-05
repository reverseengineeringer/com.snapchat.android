package org.apache.commons.codec.binary;

import java.io.OutputStream;

public class Base64OutputStream
  extends BaseNCodecOutputStream
{
  public Base64OutputStream(OutputStream paramOutputStream)
  {
    this(paramOutputStream, true);
  }
  
  public Base64OutputStream(OutputStream paramOutputStream, boolean paramBoolean)
  {
    super(paramOutputStream, new Base64(false), paramBoolean);
  }
  
  public Base64OutputStream(OutputStream paramOutputStream, boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    super(paramOutputStream, new Base64(paramInt, paramArrayOfByte), paramBoolean);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.binary.Base64OutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */