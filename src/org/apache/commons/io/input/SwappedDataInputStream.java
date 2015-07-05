package org.apache.commons.io.input;

import java.io.DataInput;
import java.io.EOFException;
import java.io.InputStream;
import org.apache.commons.io.EndianUtils;

public class SwappedDataInputStream
  extends ProxyInputStream
  implements DataInput
{
  public SwappedDataInputStream(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  public boolean readBoolean()
  {
    return readByte() != 0;
  }
  
  public byte readByte()
  {
    return (byte)in.read();
  }
  
  public char readChar()
  {
    return (char)readShort();
  }
  
  public double readDouble()
  {
    return EndianUtils.readSwappedDouble(in);
  }
  
  public float readFloat()
  {
    return EndianUtils.readSwappedFloat(in);
  }
  
  public void readFully(byte[] paramArrayOfByte)
  {
    readFully(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void readFully(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    while (i > 0)
    {
      int j = read(paramArrayOfByte, paramInt1 + paramInt2 - i, i);
      if (-1 == j) {
        throw new EOFException();
      }
      i -= j;
    }
  }
  
  public int readInt()
  {
    return EndianUtils.readSwappedInteger(in);
  }
  
  public String readLine()
  {
    throw new UnsupportedOperationException("Operation not supported: readLine()");
  }
  
  public long readLong()
  {
    return EndianUtils.readSwappedLong(in);
  }
  
  public short readShort()
  {
    return EndianUtils.readSwappedShort(in);
  }
  
  public String readUTF()
  {
    throw new UnsupportedOperationException("Operation not supported: readUTF()");
  }
  
  public int readUnsignedByte()
  {
    return in.read();
  }
  
  public int readUnsignedShort()
  {
    return EndianUtils.readSwappedUnsignedShort(in);
  }
  
  public int skipBytes(int paramInt)
  {
    return (int)in.skip(paramInt);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.input.SwappedDataInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */