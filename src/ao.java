import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public final class ao
{
  private static ff a = new ff();
  private static byte[] b = new byte[4];
  
  private static int a(byte paramByte)
  {
    int i = paramByte;
    if (paramByte < 0) {
      i = paramByte + 256;
    }
    return i;
  }
  
  public static long a(ByteBuffer paramByteBuffer)
  {
    long l2 = paramByteBuffer.getInt();
    long l1 = l2;
    if (l2 < 0L) {
      l1 = l2 + 4294967296L;
    }
    return l1;
  }
  
  public static String a(ByteBuffer paramByteBuffer, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    paramByteBuffer.get(arrayOfByte);
    return ar.a(arrayOfByte);
  }
  
  public static int b(ByteBuffer paramByteBuffer)
  {
    return ((a(paramByteBuffer.get()) << 8) + 0 + a(paramByteBuffer.get()) << 8) + 0 + a(paramByteBuffer.get());
  }
  
  public static int c(ByteBuffer paramByteBuffer)
  {
    return a(paramByteBuffer.get());
  }
  
  public static long d(ByteBuffer paramByteBuffer)
  {
    long l = (a(paramByteBuffer) << 32) + 0L;
    if (l < 0L) {
      throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }
    return l + a(paramByteBuffer);
  }
  
  public static String e(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.get(b);
    int i = b[0];
    int j = b[1];
    int k = b[2];
    i = b[3] & 0xFF | i << 24 & 0xFF000000 | j << 16 & 0xFF0000 | k << 8 & 0xFF00;
    paramByteBuffer = aa;
    for (paramByteBuffer = paramByteBuffer[((0x7FFFFFFF & i) % paramByteBuffer.length)];; paramByteBuffer = d)
    {
      if (paramByteBuffer == null) {}
      for (paramByteBuffer = null;; paramByteBuffer = c)
      {
        paramByteBuffer = (String)paramByteBuffer;
        if (paramByteBuffer == null) {
          break label118;
        }
        return paramByteBuffer;
        if (a != i) {
          break;
        }
      }
    }
    try
    {
      label118:
      paramByteBuffer = new String(b, "ISO-8859-1");
      a.a(i, paramByteBuffer);
      return paramByteBuffer;
    }
    catch (UnsupportedEncodingException paramByteBuffer)
    {
      throw new RuntimeException(paramByteBuffer);
    }
  }
}

/* Location:
 * Qualified Name:     ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */