import java.nio.ByteBuffer;

public final class ap
{
  static
  {
    if (!ap.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public static void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    paramInt = 0xFFFFFF & paramInt;
    int i = paramInt >> 8 & 0xFFFF;
    b(paramByteBuffer, i >> 8);
    b(paramByteBuffer, i & 0xFF);
    b(paramByteBuffer, paramInt);
  }
  
  public static void a(ByteBuffer paramByteBuffer, long paramLong)
  {
    if ((!a) && (paramLong < 0L)) {
      throw new AssertionError("The given long is negative");
    }
    paramByteBuffer.putLong(paramLong);
  }
  
  public static void b(ByteBuffer paramByteBuffer, int paramInt)
  {
    paramByteBuffer.put((byte)(paramInt & 0xFF));
  }
  
  public static void b(ByteBuffer paramByteBuffer, long paramLong)
  {
    if ((!a) && ((paramLong < 0L) || (paramLong > 4294967296L))) {
      throw new AssertionError("The given long is not in the range of uint32 (" + paramLong + ")");
    }
    paramByteBuffer.putInt((int)paramLong);
  }
}

/* Location:
 * Qualified Name:     ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */