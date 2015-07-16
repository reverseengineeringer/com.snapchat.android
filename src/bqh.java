import android.graphics.Bitmap.Config;
import android.net.Uri;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class bqh
{
  private static final long s = TimeUnit.SECONDS.toNanos(5L);
  int a;
  long b;
  int c;
  public final Uri d;
  public final int e;
  public final String f;
  public final List<bqn> g;
  public final int h;
  public final int i;
  public final boolean j;
  public final boolean k;
  public final boolean l;
  public final float m;
  public final float n;
  public final float o;
  public final boolean p;
  public final Bitmap.Config q;
  public final int r;
  
  private bqh(Uri paramUri, int paramInt1, String paramString, List<bqn> paramList, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean4, Bitmap.Config paramConfig, int paramInt4)
  {
    d = paramUri;
    e = paramInt1;
    f = paramString;
    if (paramList == null) {}
    for (g = null;; g = Collections.unmodifiableList(paramList))
    {
      h = paramInt2;
      i = paramInt3;
      j = paramBoolean1;
      k = paramBoolean2;
      l = paramBoolean3;
      m = paramFloat1;
      n = paramFloat2;
      o = paramFloat3;
      p = paramBoolean4;
      q = paramConfig;
      r = paramInt4;
      return;
    }
  }
  
  final String a()
  {
    long l1 = System.nanoTime() - b;
    if (l1 > s) {
      return b() + '+' + TimeUnit.NANOSECONDS.toSeconds(l1) + 's';
    }
    return b() + '+' + TimeUnit.NANOSECONDS.toMillis(l1) + "ms";
  }
  
  final String b()
  {
    return "[R" + a + ']';
  }
  
  public final boolean c()
  {
    return (h != 0) || (i != 0);
  }
  
  final boolean d()
  {
    return (c()) || (m != 0.0F);
  }
  
  final boolean e()
  {
    return g != null;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Request{");
    if (e > 0) {
      localStringBuilder.append(e);
    }
    while ((g != null) && (!g.isEmpty()))
    {
      Iterator localIterator = g.iterator();
      while (localIterator.hasNext())
      {
        bqn localbqn = (bqn)localIterator.next();
        localStringBuilder.append(' ').append(localbqn.b());
      }
      localStringBuilder.append(d);
    }
    if (f != null) {
      localStringBuilder.append(" stableKey(").append(f).append(')');
    }
    if (h > 0) {
      localStringBuilder.append(" resize(").append(h).append(',').append(i).append(')');
    }
    if (j) {
      localStringBuilder.append(" centerCrop");
    }
    if (k) {
      localStringBuilder.append(" centerInside");
    }
    if (m != 0.0F)
    {
      localStringBuilder.append(" rotation(").append(m);
      if (p) {
        localStringBuilder.append(" @ ").append(n).append(',').append(o);
      }
      localStringBuilder.append(')');
    }
    if (q != null) {
      localStringBuilder.append(' ').append(q);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static final class a
  {
    Uri a;
    int b;
    String c;
    int d;
    int e;
    boolean f;
    boolean g;
    boolean h;
    float i;
    float j;
    float k;
    boolean l;
    List<bqn> m;
    Bitmap.Config n;
    int o;
    
    a(Uri paramUri, Bitmap.Config paramConfig)
    {
      a = paramUri;
      b = 0;
      n = paramConfig;
    }
    
    public final a a(int paramInt1, int paramInt2)
    {
      if (paramInt1 < 0) {
        throw new IllegalArgumentException("Width must be positive number or 0.");
      }
      if (paramInt2 < 0) {
        throw new IllegalArgumentException("Height must be positive number or 0.");
      }
      if ((paramInt2 == 0) && (paramInt1 == 0)) {
        throw new IllegalArgumentException("At least one dimension has to be positive number.");
      }
      d = paramInt1;
      e = paramInt2;
      return this;
    }
    
    final boolean a()
    {
      return (a != null) || (b != 0);
    }
  }
}

/* Location:
 * Qualified Name:     bqh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */