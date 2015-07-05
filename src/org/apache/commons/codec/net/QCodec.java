package org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;

public class QCodec
  extends RFC1522Codec
  implements StringDecoder, StringEncoder
{
  private static final byte BLANK = 32;
  private static final BitSet PRINTABLE_CHARS;
  private static final byte UNDERSCORE = 95;
  private final String charset;
  private boolean encodeBlanks = false;
  
  static
  {
    BitSet localBitSet = new BitSet(256);
    PRINTABLE_CHARS = localBitSet;
    localBitSet.set(32);
    PRINTABLE_CHARS.set(33);
    PRINTABLE_CHARS.set(34);
    PRINTABLE_CHARS.set(35);
    PRINTABLE_CHARS.set(36);
    PRINTABLE_CHARS.set(37);
    PRINTABLE_CHARS.set(38);
    PRINTABLE_CHARS.set(39);
    PRINTABLE_CHARS.set(40);
    PRINTABLE_CHARS.set(41);
    PRINTABLE_CHARS.set(42);
    PRINTABLE_CHARS.set(43);
    PRINTABLE_CHARS.set(44);
    PRINTABLE_CHARS.set(45);
    PRINTABLE_CHARS.set(46);
    PRINTABLE_CHARS.set(47);
    int i = 48;
    while (i <= 57)
    {
      PRINTABLE_CHARS.set(i);
      i += 1;
    }
    PRINTABLE_CHARS.set(58);
    PRINTABLE_CHARS.set(59);
    PRINTABLE_CHARS.set(60);
    PRINTABLE_CHARS.set(62);
    PRINTABLE_CHARS.set(64);
    i = 65;
    while (i <= 90)
    {
      PRINTABLE_CHARS.set(i);
      i += 1;
    }
    PRINTABLE_CHARS.set(91);
    PRINTABLE_CHARS.set(92);
    PRINTABLE_CHARS.set(93);
    PRINTABLE_CHARS.set(94);
    PRINTABLE_CHARS.set(96);
    i = 97;
    while (i <= 122)
    {
      PRINTABLE_CHARS.set(i);
      i += 1;
    }
    PRINTABLE_CHARS.set(123);
    PRINTABLE_CHARS.set(124);
    PRINTABLE_CHARS.set(125);
    PRINTABLE_CHARS.set(126);
  }
  
  public QCodec()
  {
    this("UTF-8");
  }
  
  public QCodec(String paramString)
  {
    charset = paramString;
  }
  
  public Object decode(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof String)) {
      return decode((String)paramObject);
    }
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be decoded using Q codec");
  }
  
  public String decode(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = decodeText(paramString);
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new DecoderException(paramString.getMessage(), paramString);
    }
  }
  
  protected byte[] doDecoding(byte[] paramArrayOfByte)
  {
    int k = 0;
    if (paramArrayOfByte == null) {
      return null;
    }
    int m = paramArrayOfByte.length;
    int j = 0;
    if (j < m) {
      if (paramArrayOfByte[j] != 95) {}
    }
    for (j = 1;; j = 0)
    {
      if (j != 0)
      {
        byte[] arrayOfByte = new byte[paramArrayOfByte.length];
        j = k;
        label44:
        if (j < paramArrayOfByte.length)
        {
          int i = paramArrayOfByte[j];
          if (i != 95) {
            arrayOfByte[j] = i;
          }
          for (;;)
          {
            j += 1;
            break label44;
            j += 1;
            break;
            arrayOfByte[j] = 32;
          }
        }
        return QuotedPrintableCodec.decodeQuotedPrintable(arrayOfByte);
      }
      return QuotedPrintableCodec.decodeQuotedPrintable(paramArrayOfByte);
    }
  }
  
  protected byte[] doEncoding(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    paramArrayOfByte = QuotedPrintableCodec.encodeQuotedPrintable(PRINTABLE_CHARS, paramArrayOfByte);
    if (encodeBlanks)
    {
      int i = 0;
      while (i < paramArrayOfByte.length)
      {
        if (paramArrayOfByte[i] == 32) {
          paramArrayOfByte[i] = 95;
        }
        i += 1;
      }
    }
    return paramArrayOfByte;
  }
  
  public Object encode(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof String)) {
      return encode((String)paramObject);
    }
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be encoded using Q codec");
  }
  
  public String encode(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return encode(paramString, getDefaultCharset());
  }
  
  public String encode(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    try
    {
      paramString1 = encodeText(paramString1, paramString2);
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new EncoderException(paramString1.getMessage(), paramString1);
    }
  }
  
  public String getDefaultCharset()
  {
    return charset;
  }
  
  protected String getEncoding()
  {
    return "Q";
  }
  
  public boolean isEncodeBlanks()
  {
    return encodeBlanks;
  }
  
  public void setEncodeBlanks(boolean paramBoolean)
  {
    encodeBlanks = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.net.QCodec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */