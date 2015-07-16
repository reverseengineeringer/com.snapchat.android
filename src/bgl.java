import java.io.InputStream;

public final class bgl
  implements bgk
{
  private static final String TAG = "DynamicByteBuffer";
  public byte[] mBuffer;
  private final bgl.a mExpansionStrategy;
  public int mSize = 0;
  
  public bgl()
  {
    this(256000, new bgl.c());
  }
  
  public bgl(int paramInt, bgl.a parama)
  {
    mExpansionStrategy = parama;
    mBuffer = new byte[paramInt];
  }
  
  public final int a()
  {
    return mSize;
  }
  
  public final int a(@chc InputStream paramInputStream)
  {
    int i = mBuffer.length;
    int j = 0;
    for (;;)
    {
      int k = paramInputStream.read(mBuffer, j, i);
      if (k != -1)
      {
        int m = i - k;
        k = j + k;
        if (m < 0) {
          throw new IllegalStateException(String.format("AvailableSize (%d) should not be less than 0!", new Object[] { Integer.valueOf(m) }));
        }
        i = m;
        j = k;
        if (m != 0) {
          continue;
        }
        j = mExpansionStrategy.a(mBuffer.length);
        i = j - mBuffer.length;
        toString();
        m = mBuffer.length;
        try
        {
          byte[] arrayOfByte1 = new byte[j];
          System.arraycopy(mBuffer, 0, arrayOfByte1, 0, mBuffer.length);
          mBuffer = arrayOfByte1;
          j = k;
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          for (;;)
          {
            System.gc();
            byte[] arrayOfByte2 = new byte[j];
          }
        }
      }
    }
    mSize = j;
    return mSize;
  }
  
  public final byte[] b()
  {
    return mBuffer;
  }
  
  public static abstract interface a
  {
    public abstract int a(int paramInt);
  }
  
  public static final class b
    implements bgl.a
  {
    public final int a(int paramInt)
    {
      return paramInt * 2;
    }
  }
  
  public static final class c
    implements bgl.a
  {
    private final int mLinearExpansionSize = 256000;
    
    public final int a(int paramInt)
    {
      return mLinearExpansionSize + paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     bgl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */