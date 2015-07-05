import com.snapchat.android.Timber;
import java.io.InputStream;

public final class bfl
  implements bfk
{
  private static final String TAG = "DynamicByteBuffer";
  public byte[] mBuffer;
  private final bfl.a mExpansionStrategy;
  public int mSize = 0;
  
  public bfl()
  {
    this(256000, new bfl.c());
  }
  
  public bfl(int paramInt, bfl.a parama)
  {
    mExpansionStrategy = parama;
    mBuffer = new byte[paramInt];
  }
  
  public final int a()
  {
    return mSize;
  }
  
  public final int a(@cgb InputStream paramInputStream, @cgc bfk.a parama)
  {
    int j = mBuffer.length;
    int i = 0;
    for (;;)
    {
      int m = paramInputStream.read(mBuffer, i, j);
      if (m != -1)
      {
        j -= m;
        int k = i + m;
        if (j < 0) {
          throw new IllegalStateException(String.format("AvailableSize (%d) should not be less than 0!", new Object[] { Integer.valueOf(j) }));
        }
        i = j;
        if (j == 0)
        {
          i = mExpansionStrategy.a(mBuffer.length);
          j = mBuffer.length;
          Timber.c("DynamicByteBuffer", "Increasing dynamic byte buffer (%s) size from %d to %d bytes", new Object[] { toString(), Integer.valueOf(mBuffer.length), Integer.valueOf(i) });
        }
        try
        {
          byte[] arrayOfByte1 = new byte[i];
          System.arraycopy(mBuffer, 0, arrayOfByte1, 0, mBuffer.length);
          mBuffer = arrayOfByte1;
          i -= j;
          parama.a(m);
          j = i;
          i = k;
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          for (;;)
          {
            Timber.f("DynamicByteBuffer", "Out of memory exception caught while trying to allocated %d bytes. Running GC then trying again.", new Object[] { Integer.valueOf(i) });
            System.gc();
            byte[] arrayOfByte2 = new byte[i];
          }
        }
      }
    }
    mSize = i;
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
    implements bfl.a
  {
    public final int a(int paramInt)
    {
      return paramInt * 2;
    }
  }
  
  public static final class c
    implements bfl.a
  {
    private final int mLinearExpansionSize = 256000;
    
    public final int a(int paramInt)
    {
      return mLinearExpansionSize + paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     bfl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */