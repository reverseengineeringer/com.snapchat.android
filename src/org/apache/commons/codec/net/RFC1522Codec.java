package org.apache.commons.codec.net;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.StringUtils;

abstract class RFC1522Codec
{
  protected static final String POSTFIX = "?=";
  protected static final String PREFIX = "=?";
  protected static final char SEP = '?';
  
  protected String decodeText(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if ((!paramString.startsWith("=?")) || (!paramString.endsWith("?="))) {
      throw new DecoderException("RFC 1522 violation: malformed encoded content");
    }
    int i = paramString.length() - 2;
    int j = paramString.indexOf('?', 2);
    if (j == i) {
      throw new DecoderException("RFC 1522 violation: charset token not found");
    }
    String str1 = paramString.substring(2, j);
    if (str1.equals("")) {
      throw new DecoderException("RFC 1522 violation: charset not specified");
    }
    j += 1;
    int k = paramString.indexOf('?', j);
    if (k == i) {
      throw new DecoderException("RFC 1522 violation: encoding token not found");
    }
    String str2 = paramString.substring(j, k);
    if (!getEncoding().equalsIgnoreCase(str2)) {
      throw new DecoderException("This codec cannot decode " + str2 + " encoded content");
    }
    i = k + 1;
    return new String(doDecoding(StringUtils.getBytesUsAscii(paramString.substring(i, paramString.indexOf('?', i)))), str1);
  }
  
  protected abstract byte[] doDecoding(byte[] paramArrayOfByte);
  
  protected abstract byte[] doEncoding(byte[] paramArrayOfByte);
  
  protected String encodeText(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("=?");
    localStringBuffer.append(paramString2);
    localStringBuffer.append('?');
    localStringBuffer.append(getEncoding());
    localStringBuffer.append('?');
    localStringBuffer.append(StringUtils.newStringUsAscii(doEncoding(paramString1.getBytes(paramString2))));
    localStringBuffer.append("?=");
    return localStringBuffer.toString();
  }
  
  protected abstract String getEncoding();
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.net.RFC1522Codec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */