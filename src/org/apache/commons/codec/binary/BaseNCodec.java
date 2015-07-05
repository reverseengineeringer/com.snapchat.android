package org.apache.commons.codec.binary;

import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;

public abstract class BaseNCodec
  implements BinaryDecoder, BinaryEncoder
{
  private static final int DEFAULT_BUFFER_RESIZE_FACTOR = 2;
  private static final int DEFAULT_BUFFER_SIZE = 8192;
  protected static final int MASK_8BITS = 255;
  public static final int MIME_CHUNK_SIZE = 76;
  protected static final byte PAD_DEFAULT = 61;
  public static final int PEM_CHUNK_SIZE = 64;
  protected final byte PAD = 61;
  protected byte[] buffer;
  private final int chunkSeparatorLength;
  protected int currentLinePos;
  private final int encodedBlockSize;
  protected boolean eof;
  protected final int lineLength;
  protected int modulus;
  protected int pos;
  private int readPos;
  private final int unencodedBlockSize;
  
  protected BaseNCodec(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    unencodedBlockSize = paramInt1;
    encodedBlockSize = paramInt2;
    if ((paramInt3 > 0) && (paramInt4 > 0)) {}
    for (paramInt1 = paramInt3 / paramInt2 * paramInt2;; paramInt1 = 0)
    {
      lineLength = paramInt1;
      chunkSeparatorLength = paramInt4;
      return;
    }
  }
  
  protected static boolean isWhiteSpace(byte paramByte)
  {
    switch (paramByte)
    {
    default: 
      return false;
    }
    return true;
  }
  
  private void reset()
  {
    buffer = null;
    pos = 0;
    readPos = 0;
    currentLinePos = 0;
    modulus = 0;
    eof = false;
  }
  
  private void resizeBuffer()
  {
    if (buffer == null)
    {
      buffer = new byte[getDefaultBufferSize()];
      pos = 0;
      readPos = 0;
      return;
    }
    byte[] arrayOfByte = new byte[buffer.length * 2];
    System.arraycopy(buffer, 0, arrayOfByte, 0, buffer.length);
    buffer = arrayOfByte;
  }
  
  int available()
  {
    if (buffer != null) {
      return pos - readPos;
    }
    return 0;
  }
  
  protected boolean containsAlphabetOrPad(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return false;
      int j = paramArrayOfByte.length;
      int i = 0;
      while (i < j)
      {
        byte b = paramArrayOfByte[i];
        if ((61 == b) || (isInAlphabet(b))) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public Object decode(Object paramObject)
  {
    if ((paramObject instanceof byte[])) {
      return decode((byte[])paramObject);
    }
    if ((paramObject instanceof String)) {
      return decode((String)paramObject);
    }
    throw new DecoderException("Parameter supplied to Base-N decode is not a byte[] or a String");
  }
  
  abstract void decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public byte[] decode(String paramString)
  {
    return decode(StringUtils.getBytesUtf8(paramString));
  }
  
  public byte[] decode(byte[] paramArrayOfByte)
  {
    reset();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return paramArrayOfByte;
    }
    decode(paramArrayOfByte, 0, paramArrayOfByte.length);
    decode(paramArrayOfByte, 0, -1);
    paramArrayOfByte = new byte[pos];
    readResults(paramArrayOfByte, 0, paramArrayOfByte.length);
    return paramArrayOfByte;
  }
  
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof byte[])) {
      throw new EncoderException("Parameter supplied to Base-N encode is not a byte[]");
    }
    return encode((byte[])paramObject);
  }
  
  abstract void encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public byte[] encode(byte[] paramArrayOfByte)
  {
    reset();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return paramArrayOfByte;
    }
    encode(paramArrayOfByte, 0, paramArrayOfByte.length);
    encode(paramArrayOfByte, 0, -1);
    paramArrayOfByte = new byte[pos - readPos];
    readResults(paramArrayOfByte, 0, paramArrayOfByte.length);
    return paramArrayOfByte;
  }
  
  public String encodeAsString(byte[] paramArrayOfByte)
  {
    return StringUtils.newStringUtf8(encode(paramArrayOfByte));
  }
  
  public String encodeToString(byte[] paramArrayOfByte)
  {
    return StringUtils.newStringUtf8(encode(paramArrayOfByte));
  }
  
  protected void ensureBufferSize(int paramInt)
  {
    if ((buffer == null) || (buffer.length < pos + paramInt)) {
      resizeBuffer();
    }
  }
  
  protected int getDefaultBufferSize()
  {
    return 8192;
  }
  
  public long getEncodedLength(byte[] paramArrayOfByte)
  {
    long l2 = (paramArrayOfByte.length + unencodedBlockSize - 1) / unencodedBlockSize * encodedBlockSize;
    long l1 = l2;
    if (lineLength > 0) {
      l1 = l2 + (lineLength + l2 - 1L) / lineLength * chunkSeparatorLength;
    }
    return l1;
  }
  
  boolean hasData()
  {
    return buffer != null;
  }
  
  protected abstract boolean isInAlphabet(byte paramByte);
  
  public boolean isInAlphabet(String paramString)
  {
    return isInAlphabet(StringUtils.getBytesUtf8(paramString), true);
  }
  
  public boolean isInAlphabet(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      if ((!isInAlphabet(paramArrayOfByte[i])) && ((!paramBoolean) || ((paramArrayOfByte[i] != 61) && (!isWhiteSpace(paramArrayOfByte[i]))))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  int readResults(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (buffer != null)
    {
      paramInt2 = Math.min(available(), paramInt2);
      System.arraycopy(buffer, readPos, paramArrayOfByte, paramInt1, paramInt2);
      readPos += paramInt2;
      if (readPos >= pos) {
        buffer = null;
      }
      return paramInt2;
    }
    if (eof) {
      return -1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.binary.BaseNCodec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */