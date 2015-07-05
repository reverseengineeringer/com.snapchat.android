import com.snapchat.android.discover.model.DSnapPage;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

@bwr
public final class adf
{
  private static final adf f = new adf();
  public final adj a;
  public final Map<String, adf.c> b = new ConcurrentHashMap();
  public final Map<String, adf.a> c = new ConcurrentHashMap();
  public final Map<String, adf.b> d = new ConcurrentHashMap();
  public final Map<String, List<DSnapPage>> e = new ConcurrentHashMap();
  private final bgk g;
  
  private adf()
  {
    this(new bgk(), adj.a());
  }
  
  private adf(bgk parambgk, adj paramadj)
  {
    g = parambgk;
    a = paramadj;
  }
  
  public static adf a()
  {
    return f;
  }
  
  private boolean f(String paramString)
  {
    return (e.containsKey(paramString)) && (!b.containsKey(paramString));
  }
  
  public final int a(@cgc String paramString)
  {
    if (paramString != null) {}
    for (paramString = (adf.c)b.get(paramString); paramString != null; paramString = null) {
      return b;
    }
    return -1;
  }
  
  public final void a(@cgc String paramString, int paramInt)
  {
    if (paramString == null) {
      return;
    }
    synchronized (b)
    {
      if (f(paramString)) {
        return;
      }
    }
    Object localObject = new adf.c.a();
    a = paramString;
    localObject = ((adf.c.a)localObject).a((adf.c)b.get(paramString));
    b = paramInt;
    localObject = ((adf.c.a)localObject).a();
    b.put(paramString, localObject);
  }
  
  public final void a(String paramString, long paramLong)
  {
    c.put(paramString, new adf.a(paramString, paramLong));
  }
  
  public final void a(@cgc String paramString, boolean paramBoolean)
  {
    if (paramString == null) {
      return;
    }
    synchronized (b)
    {
      if (f(paramString)) {
        return;
      }
    }
    Object localObject = (adf.c)b.get(paramString);
    boolean bool = paramBoolean;
    if (localObject != null)
    {
      bool = paramBoolean;
      if (!paramBoolean) {
        bool = c;
      }
    }
    localObject = new adf.c.a();
    a = paramString;
    localObject = ((adf.c.a)localObject).a((adf.c)b.get(paramString));
    c = bool;
    localObject = ((adf.c.a)localObject).a();
    b.put(paramString, localObject);
  }
  
  public final boolean a(Set<String> paramSet)
  {
    synchronized (d)
    {
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str = (String)paramSet.next();
        if (!d.containsKey(str)) {
          return false;
        }
      }
      return true;
    }
  }
  
  public final void b(@cgb String paramString, long paramLong)
  {
    d.put(paramString, new adf.b(paramString, paramLong));
  }
  
  public final boolean b(@cgc String paramString)
  {
    if (paramString != null) {}
    for (paramString = (adf.c)b.get(paramString); (paramString != null) && (c); paramString = null) {
      return true;
    }
    return false;
  }
  
  public final long c(@cgb String paramString)
  {
    paramString = (adf.a)c.get(paramString);
    if (paramString != null) {
      return b;
    }
    return 0L;
  }
  
  public final int d(@cgb String paramString)
  {
    adf.c localc = (adf.c)b.get(paramString);
    if (localc != null) {
      return d;
    }
    if (e.containsKey(paramString)) {
      return -1;
    }
    return 0;
  }
  
  public final int e(@cgb String paramString)
  {
    adf.c localc = (adf.c)b.get(paramString);
    if (localc != null) {
      return e;
    }
    if (e.containsKey(paramString)) {
      return -1;
    }
    return 0;
  }
  
  public static final class a
  {
    public String a;
    public long b;
    
    public a(String paramString, long paramLong)
    {
      a = paramString;
      b = paramLong;
    }
  }
  
  public static final class b
  {
    @cgb
    public String a;
    public long b;
    
    public b(@cgb String paramString, long paramLong)
    {
      a = paramString;
      b = paramLong;
    }
  }
  
  public static final class c
  {
    @cgb
    public final String a;
    public final int b;
    public final boolean c;
    final int d;
    final int e;
    public final Set<String> f;
    
    private c(adf.c.a parama)
    {
      a = a;
      b = b;
      c = c;
      d = d;
      e = e;
      f = f;
    }
    
    public static final class a
    {
      public String a;
      public int b = -1;
      public boolean c;
      public int d = 0;
      public int e = 0;
      public Set<String> f = new HashSet();
      
      public final a a(@cgc adf.c paramc)
      {
        if (paramc != null)
        {
          a = a;
          b = b;
          c = c;
          d = d;
          e = e;
          f = f;
        }
        return this;
      }
      
      public final adf.c a()
      {
        if (a == null) {
          throw new IllegalArgumentException("Cannot build EditionViewState with null ID.");
        }
        return new adf.c(this, (byte)0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     adf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */