import android.os.Build.VERSION;
import java.util.LinkedList;
import java.util.List;

public class ba
{
  public String a = null;
  public boolean b = false;
  public boolean c = false;
  public boolean d = true;
  public boolean e = false;
  public boolean f = b();
  public String g = "com.crittercism/dumps";
  List h = new LinkedList();
  private String i = "Developer Reply";
  private String j = null;
  private List k = new LinkedList();
  
  public ba() {}
  
  public ba(ba paramba)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
    g = g;
    i = i;
    List localList = k;
    k.clear();
    if (localList != null) {
      k.addAll(localList);
    }
    localList = h;
    h.clear();
    if (localList != null) {
      h.addAll(localList);
    }
    j = j;
  }
  
  private static int a(String paramString)
  {
    int m = 0;
    if (paramString != null) {
      m = paramString.hashCode();
    }
    return m;
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return paramString2 == null;
    }
    return paramString1.equals(paramString2);
  }
  
  private static final boolean b()
  {
    return (Build.VERSION.SDK_INT >= 10) && (Build.VERSION.SDK_INT <= 19);
  }
  
  @Deprecated
  public List a()
  {
    return new LinkedList(k);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ba)) {}
    do
    {
      return false;
      paramObject = (ba)paramObject;
    } while ((b != b) || (e != e) || (d != d) || (f != f) || (c != c) || (!a(a, a)) || (!a(i, i)) || (!a(g, g)) || (!k.equals(k)) || (!h.equals(h)) || (!a(j, j)));
    return true;
  }
  
  public int hashCode()
  {
    int i3 = 1;
    int i4 = a(a);
    int i5 = a(i);
    int i6 = a(g);
    int i7 = a(j);
    int i8 = k.hashCode();
    int i9 = h.hashCode();
    int m;
    int n;
    label79:
    int i1;
    label88:
    int i2;
    if (b)
    {
      m = 1;
      if (!e) {
        break label176;
      }
      n = 1;
      if (!d) {
        break label181;
      }
      i1 = 1;
      if (!f) {
        break label186;
      }
      i2 = 1;
      label98:
      if (!c) {
        break label192;
      }
    }
    for (;;)
    {
      return Integer.valueOf((i2 + (i1 + (n + (m + 0 << 1) << 1) << 1) << 1) + i3).hashCode() + (i9 + (((((i4 + 0) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31) * 31;
      m = 0;
      break;
      label176:
      n = 0;
      break label79;
      label181:
      i1 = 0;
      break label88;
      label186:
      i2 = 0;
      break label98;
      label192:
      i3 = 0;
    }
  }
}

/* Location:
 * Qualified Name:     ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */