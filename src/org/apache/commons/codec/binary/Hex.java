package org.apache.commons.codec.binary;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;

public class Hex
  implements BinaryDecoder, BinaryEncoder
{
  public static final String DEFAULT_CHARSET_NAME = "UTF-8";
  private static final char[] DIGITS_LOWER = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final char[] DIGITS_UPPER = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private final String charsetName;
  
  public Hex()
  {
    charsetName = "UTF-8";
  }
  
  public Hex(String paramString)
  {
    charsetName = paramString;
  }
  
  public static byte[] decodeHex(char[] paramArrayOfChar)
  {
    int j = 0;
    int k = paramArrayOfChar.length;
    if ((k & 0x1) != 0) {
      throw new DecoderException("Odd number of characters.");
    }
    byte[] arrayOfByte = new byte[k >> 1];
    int i = 0;
    while (j < k)
    {
      int m = toDigit(paramArrayOfChar[j], j);
      j += 1;
      int n = toDigit(paramArrayOfChar[j], j);
      j += 1;
      arrayOfByte[i] = ((byte)((m << 4 | n) & 0xFF));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static char[] encodeHex(byte[] paramArrayOfByte)
  {
    return encodeHex(paramArrayOfByte, true);
  }
  
  public static char[] encodeHex(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (char[] arrayOfChar = DIGITS_LOWER;; arrayOfChar = DIGITS_UPPER) {
      return encodeHex(paramArrayOfByte, arrayOfChar);
    }
  }
  
  protected static char[] encodeHex(byte[] paramArrayOfByte, char[] paramArrayOfChar)
  {
    int j = 0;
    int k = paramArrayOfByte.length;
    char[] arrayOfChar = new char[k << 1];
    int i = 0;
    while (i < k)
    {
      int m = j + 1;
      arrayOfChar[j] = paramArrayOfChar[((paramArrayOfByte[i] & 0xF0) >>> 4)];
      j = m + 1;
      arrayOfChar[m] = paramArrayOfChar[(paramArrayOfByte[i] & 0xF)];
      i += 1;
    }
    return arrayOfChar;
  }
  
  public static String encodeHexString(byte[] paramArrayOfByte)
  {
    return new String(encodeHex(paramArrayOfByte));
  }
  
  protected static int toDigit(char paramChar, int paramInt)
  {
    int i = Character.digit(paramChar, 16);
    if (i == -1) {
      throw new DecoderException("Illegal hexadecimal character " + paramChar + " at index " + paramInt);
    }
    return i;
  }
  
  /* Error */
  public Object decode(Object paramObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: instanceof 75
    //   4: ifeq +16 -> 20
    //   7: aload_1
    //   8: checkcast 75	java/lang/String
    //   11: invokevirtual 114	java/lang/String:toCharArray	()[C
    //   14: astore_1
    //   15: aload_1
    //   16: invokestatic 116	org/apache/commons/codec/binary/Hex:decodeHex	([C)[B
    //   19: areturn
    //   20: aload_1
    //   21: checkcast 117	[C
    //   24: checkcast 117	[C
    //   27: astore_1
    //   28: goto -13 -> 15
    //   31: astore_1
    //   32: new 55	org/apache/commons/codec/DecoderException
    //   35: dup
    //   36: aload_1
    //   37: invokevirtual 120	java/lang/ClassCastException:getMessage	()Ljava/lang/String;
    //   40: aload_1
    //   41: invokespecial 123	org/apache/commons/codec/DecoderException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	Hex
    //   0	45	1	paramObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	15	31	java/lang/ClassCastException
    //   15	20	31	java/lang/ClassCastException
    //   20	28	31	java/lang/ClassCastException
  }
  
  public byte[] decode(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = decodeHex(new String(paramArrayOfByte, getCharsetName()).toCharArray());
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new DecoderException(paramArrayOfByte.getMessage(), paramArrayOfByte);
    }
  }
  
  /* Error */
  public Object encode(Object paramObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: instanceof 75
    //   4: ifeq +20 -> 24
    //   7: aload_1
    //   8: checkcast 75	java/lang/String
    //   11: aload_0
    //   12: invokevirtual 129	org/apache/commons/codec/binary/Hex:getCharsetName	()Ljava/lang/String;
    //   15: invokevirtual 138	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   18: astore_1
    //   19: aload_1
    //   20: invokestatic 77	org/apache/commons/codec/binary/Hex:encodeHex	([B)[C
    //   23: areturn
    //   24: aload_1
    //   25: checkcast 140	[B
    //   28: checkcast 140	[B
    //   31: astore_1
    //   32: goto -13 -> 19
    //   35: astore_1
    //   36: new 142	org/apache/commons/codec/EncoderException
    //   39: dup
    //   40: aload_1
    //   41: invokevirtual 120	java/lang/ClassCastException:getMessage	()Ljava/lang/String;
    //   44: aload_1
    //   45: invokespecial 143	org/apache/commons/codec/EncoderException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   48: athrow
    //   49: astore_1
    //   50: new 142	org/apache/commons/codec/EncoderException
    //   53: dup
    //   54: aload_1
    //   55: invokevirtual 133	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   58: aload_1
    //   59: invokespecial 143	org/apache/commons/codec/EncoderException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	Hex
    //   0	63	1	paramObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	19	35	java/lang/ClassCastException
    //   19	24	35	java/lang/ClassCastException
    //   24	32	35	java/lang/ClassCastException
    //   0	19	49	java/io/UnsupportedEncodingException
    //   19	24	49	java/io/UnsupportedEncodingException
    //   24	32	49	java/io/UnsupportedEncodingException
  }
  
  public byte[] encode(byte[] paramArrayOfByte)
  {
    return StringUtils.getBytesUnchecked(encodeHexString(paramArrayOfByte), getCharsetName());
  }
  
  public String getCharsetName()
  {
    return charsetName;
  }
  
  public String toString()
  {
    return super.toString() + "[charsetName=" + charsetName + "]";
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.binary.Hex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */