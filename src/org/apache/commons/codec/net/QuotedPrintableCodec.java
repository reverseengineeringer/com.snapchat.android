package org.apache.commons.codec.net;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;
import org.apache.commons.codec.binary.StringUtils;

public class QuotedPrintableCodec
  implements BinaryDecoder, BinaryEncoder, StringDecoder, StringEncoder
{
  private static final byte ESCAPE_CHAR = 61;
  private static final BitSet PRINTABLE_CHARS = new BitSet(256);
  private static final byte SPACE = 32;
  private static final byte TAB = 9;
  private final String charset;
  
  static
  {
    int i = 33;
    while (i <= 60)
    {
      PRINTABLE_CHARS.set(i);
      i += 1;
    }
    i = 62;
    while (i <= 126)
    {
      PRINTABLE_CHARS.set(i);
      i += 1;
    }
    PRINTABLE_CHARS.set(9);
    PRINTABLE_CHARS.set(32);
  }
  
  public QuotedPrintableCodec()
  {
    this("UTF-8");
  }
  
  public QuotedPrintableCodec(String paramString)
  {
    charset = paramString;
  }
  
  public static final byte[] decodeQuotedPrintable(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i];
      if (j == 61) {
        i += 1;
      }
      for (;;)
      {
        try
        {
          j = Utils.digit16(paramArrayOfByte[i]);
          i += 1;
          localByteArrayOutputStream.write((char)((j << 4) + Utils.digit16(paramArrayOfByte[i])));
          i += 1;
        }
        catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
        {
          throw new DecoderException("Invalid quoted-printable encoding", paramArrayOfByte);
        }
        localByteArrayOutputStream.write(j);
      }
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  private static final void encodeQuotedPrintable(int paramInt, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    paramByteArrayOutputStream.write(61);
    int i = Character.toUpperCase(Character.forDigit(paramInt >> 4 & 0xF, 16));
    paramInt = Character.toUpperCase(Character.forDigit(paramInt & 0xF, 16));
    paramByteArrayOutputStream.write(i);
    paramByteArrayOutputStream.write(paramInt);
  }
  
  public static final byte[] encodeQuotedPrintable(BitSet paramBitSet, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    BitSet localBitSet = paramBitSet;
    if (paramBitSet == null) {
      localBitSet = PRINTABLE_CHARS;
    }
    paramBitSet = new ByteArrayOutputStream();
    int m = paramArrayOfByte.length;
    int i = 0;
    if (i < m)
    {
      int k = paramArrayOfByte[i];
      int j = k;
      if (k < 0) {
        j = k + 256;
      }
      if (localBitSet.get(j)) {
        paramBitSet.write(j);
      }
      for (;;)
      {
        i += 1;
        break;
        encodeQuotedPrintable(j, paramBitSet);
      }
    }
    return paramBitSet.toByteArray();
  }
  
  public Object decode(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof byte[])) {
      return decode((byte[])paramObject);
    }
    if ((paramObject instanceof String)) {
      return decode((String)paramObject);
    }
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be quoted-printable decoded");
  }
  
  public String decode(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = decode(paramString, getDefaultCharset());
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new DecoderException(paramString.getMessage(), paramString);
    }
  }
  
  public String decode(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    return new String(decode(StringUtils.getBytesUsAscii(paramString1)), paramString2);
  }
  
  public byte[] decode(byte[] paramArrayOfByte)
  {
    return decodeQuotedPrintable(paramArrayOfByte);
  }
  
  public Object encode(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof byte[])) {
      return encode((byte[])paramObject);
    }
    if ((paramObject instanceof String)) {
      return encode((String)paramObject);
    }
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be quoted-printable encoded");
  }
  
  public String encode(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = encode(paramString, getDefaultCharset());
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new EncoderException(paramString.getMessage(), paramString);
    }
  }
  
  public String encode(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    return StringUtils.newStringUsAscii(encode(paramString1.getBytes(paramString2)));
  }
  
  public byte[] encode(byte[] paramArrayOfByte)
  {
    return encodeQuotedPrintable(PRINTABLE_CHARS, paramArrayOfByte);
  }
  
  public String getDefaultCharset()
  {
    return charset;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.net.QuotedPrintableCodec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */