package org.apache.commons.codec.net;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringDecoder;
import org.apache.commons.codec.StringEncoder;
import org.apache.commons.codec.binary.Base64;

public class BCodec
  extends RFC1522Codec
  implements StringDecoder, StringEncoder
{
  private final String charset;
  
  public BCodec()
  {
    this("UTF-8");
  }
  
  public BCodec(String paramString)
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
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be decoded using BCodec");
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
    if (paramArrayOfByte == null) {
      return null;
    }
    return Base64.decodeBase64(paramArrayOfByte);
  }
  
  protected byte[] doEncoding(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    return Base64.encodeBase64(paramArrayOfByte);
  }
  
  public Object encode(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if ((paramObject instanceof String)) {
      return encode((String)paramObject);
    }
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be encoded using BCodec");
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
    return "B";
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.net.BCodec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */