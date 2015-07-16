import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public final class chv
  implements Serializable
{
  static int a = 0;
  static int b = 1;
  static int c = 2;
  static int d = 3;
  static int e = 4;
  static int f = 5;
  static int g = 6;
  static int h = 7;
  private static final Map<chv, Object> i = new HashMap(32);
  private static chv j;
  private final String k;
  private final cho[] l;
  private final int[] m;
  
  private chv(String paramString, cho[] paramArrayOfcho, int[] paramArrayOfInt)
  {
    k = paramString;
    l = paramArrayOfcho;
    m = paramArrayOfInt;
  }
  
  public static chv a()
  {
    chv localchv2 = j;
    chv localchv1 = localchv2;
    if (localchv2 == null)
    {
      localchv1 = new chv("Days", new cho[] { cho.f() }, new int[] { -1, -1, -1, 0, -1, -1, -1, -1 });
      j = localchv1;
    }
    return localchv1;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof chv)) {
      return false;
    }
    paramObject = (chv)paramObject;
    return Arrays.equals(l, l);
  }
  
  public final int hashCode()
  {
    int n = 0;
    int i1 = 0;
    while (n < l.length)
    {
      i1 += l[n].hashCode();
      n += 1;
    }
    return i1;
  }
  
  public final String toString()
  {
    return "PeriodType[" + k + "]";
  }
}

/* Location:
 * Qualified Name:     chv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */