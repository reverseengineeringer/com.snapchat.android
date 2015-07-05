import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public final class cgu
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
  private static final Map<cgu, Object> i = new HashMap(32);
  private static cgu j;
  private final String k;
  private final cgn[] l;
  private final int[] m;
  
  private cgu(String paramString, cgn[] paramArrayOfcgn, int[] paramArrayOfInt)
  {
    k = paramString;
    l = paramArrayOfcgn;
    m = paramArrayOfInt;
  }
  
  public static cgu a()
  {
    cgu localcgu2 = j;
    cgu localcgu1 = localcgu2;
    if (localcgu2 == null)
    {
      localcgu1 = new cgu("Days", new cgn[] { cgn.f() }, new int[] { -1, -1, -1, 0, -1, -1, -1, -1 });
      j = localcgu1;
    }
    return localcgu1;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof cgu)) {
      return false;
    }
    paramObject = (cgu)paramObject;
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
 * Qualified Name:     cgu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */