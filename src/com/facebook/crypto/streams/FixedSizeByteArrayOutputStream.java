package com.facebook.crypto.streams;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class FixedSizeByteArrayOutputStream
  extends ByteArrayOutputStream
{
  public FixedSizeByteArrayOutputStream(int paramInt)
  {
    super(paramInt);
  }
  
  public byte[] getBytes()
  {
    if (buf.length != count) {
      throw new IOException("Size supplied is too small");
    }
    return buf;
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.streams.FixedSizeByteArrayOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */