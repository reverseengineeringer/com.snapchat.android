import java.io.DataInput;
import java.io.IOException;
import java.util.Arrays;

final class ckj$c
  extends cgk
{
  private final long[] d;
  private final int[] e;
  private final int[] f;
  private final String[] g;
  private final ckj.a h;
  
  private ckj$c(String paramString, long[] paramArrayOfLong, int[] paramArrayOfInt1, int[] paramArrayOfInt2, String[] paramArrayOfString, ckj.a parama)
  {
    super(paramString);
    d = paramArrayOfLong;
    e = paramArrayOfInt1;
    f = paramArrayOfInt2;
    g = paramArrayOfString;
    h = parama;
  }
  
  static c a(DataInput paramDataInput, String paramString)
  {
    int k = paramDataInput.readUnsignedShort();
    Object localObject = new String[k];
    int i = 0;
    while (i < k)
    {
      localObject[i] = paramDataInput.readUTF();
      i += 1;
    }
    int m = paramDataInput.readInt();
    long[] arrayOfLong = new long[m];
    int[] arrayOfInt1 = new int[m];
    int[] arrayOfInt2 = new int[m];
    String[] arrayOfString = new String[m];
    i = 0;
    for (;;)
    {
      int j;
      if (i < m)
      {
        arrayOfLong[i] = ckj.a(paramDataInput);
        arrayOfInt1[i] = ((int)ckj.a(paramDataInput));
        arrayOfInt2[i] = ((int)ckj.a(paramDataInput));
        if (k < 256) {}
        try
        {
          j = paramDataInput.readUnsignedByte();
        }
        catch (ArrayIndexOutOfBoundsException paramDataInput)
        {
          throw new IOException("Invalid encoding");
        }
        j = paramDataInput.readUnsignedShort();
      }
      else
      {
        localObject = null;
        if (paramDataInput.readBoolean()) {
          localObject = new ckj.a(paramString, (int)ckj.a(paramDataInput), ckj.d.a(paramDataInput), ckj.d.a(paramDataInput));
        }
        return new c(paramString, arrayOfLong, arrayOfInt1, arrayOfInt2, arrayOfString, (ckj.a)localObject);
      }
      arrayOfString[i] = localObject[j];
      i += 1;
    }
  }
  
  public final String a(long paramLong)
  {
    long[] arrayOfLong = d;
    int i = Arrays.binarySearch(arrayOfLong, paramLong);
    if (i >= 0) {
      return g[i];
    }
    i ^= 0xFFFFFFFF;
    if (i < arrayOfLong.length)
    {
      if (i > 0) {
        return g[(i - 1)];
      }
      return "UTC";
    }
    if (h == null) {
      return g[(i - 1)];
    }
    return h.a(paramLong);
  }
  
  public final int b(long paramLong)
  {
    long[] arrayOfLong = d;
    int i = Arrays.binarySearch(arrayOfLong, paramLong);
    if (i >= 0) {
      return e[i];
    }
    i ^= 0xFFFFFFFF;
    if (i < arrayOfLong.length)
    {
      if (i > 0) {
        return e[(i - 1)];
      }
      return 0;
    }
    if (h == null) {
      return e[(i - 1)];
    }
    return h.b(paramLong);
  }
  
  public final boolean c()
  {
    return false;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof c)) {
        break label121;
      }
      paramObject = (c)paramObject;
      if ((!c.equals(c)) || (!Arrays.equals(d, d)) || (!Arrays.equals(g, g)) || (!Arrays.equals(e, e)) || (!Arrays.equals(f, f))) {
        break;
      }
      if (h != null) {
        break label105;
      }
    } while (h == null);
    label105:
    while (!h.equals(h)) {
      return false;
    }
    return true;
    label121:
    return false;
  }
  
  public final long f(long paramLong)
  {
    long[] arrayOfLong = d;
    int i = Arrays.binarySearch(arrayOfLong, paramLong);
    if (i >= 0)
    {
      i += 1;
      if (i >= arrayOfLong.length) {
        break label44;
      }
      l1 = arrayOfLong[i];
    }
    label44:
    do
    {
      return l1;
      i ^= 0xFFFFFFFF;
      break;
      l1 = paramLong;
    } while (h == null);
    long l2 = arrayOfLong[(arrayOfLong.length - 1)];
    long l1 = paramLong;
    if (paramLong < l2) {
      l1 = l2;
    }
    return h.f(l1);
  }
  
  public final long g(long paramLong)
  {
    long[] arrayOfLong = d;
    int i = Arrays.binarySearch(arrayOfLong, paramLong);
    long l1;
    if (i >= 0)
    {
      l1 = paramLong;
      if (paramLong > Long.MIN_VALUE) {
        l1 = paramLong - 1L;
      }
    }
    long l2;
    do
    {
      do
      {
        do
        {
          return l1;
          i ^= 0xFFFFFFFF;
          if (i >= arrayOfLong.length) {
            break;
          }
          l1 = paramLong;
        } while (i <= 0);
        l2 = arrayOfLong[(i - 1)];
        l1 = paramLong;
      } while (l2 <= Long.MIN_VALUE);
      return l2 - 1L;
      if (h != null)
      {
        l1 = h.g(paramLong);
        if (l1 < paramLong) {
          return l1;
        }
      }
      l2 = arrayOfLong[(i - 1)];
      l1 = paramLong;
    } while (l2 <= Long.MIN_VALUE);
    return l2 - 1L;
  }
}

/* Location:
 * Qualified Name:     ckj.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */