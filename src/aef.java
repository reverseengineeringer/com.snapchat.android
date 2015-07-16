import com.snapchat.android.discover.model.DSnapPage;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

@bxs
public final class aef
{
  private static final aef f = new aef();
  public final aej a;
  public final Map<String, aef.c> b = new ConcurrentHashMap();
  public final Map<String, aef.a> c = new ConcurrentHashMap();
  public final Map<String, aef.b> d = new ConcurrentHashMap();
  public final Map<String, List<DSnapPage>> e = new ConcurrentHashMap();
  private final bhk g;
  
  private aef()
  {
    this(new bhk(), aej.a());
  }
  
  private aef(bhk parambhk, aej paramaej)
  {
    g = parambhk;
    a = paramaej;
  }
  
  public static aef a()
  {
    return f;
  }
  
  private boolean f(String paramString)
  {
    return (e.containsKey(paramString)) && (!b.containsKey(paramString));
  }
  
  public final int a(@chd String paramString)
  {
    if (paramString != null) {}
    for (paramString = (aef.c)b.get(paramString); paramString != null; paramString = null) {
      return b;
    }
    return -1;
  }
  
  public final void a(@chd String paramString, int paramInt)
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
    Object localObject = new aef.c.a();
    a = paramString;
    localObject = ((aef.c.a)localObject).a((aef.c)b.get(paramString));
    b = paramInt;
    localObject = ((aef.c.a)localObject).a();
    b.put(paramString, localObject);
  }
  
  public final void a(String paramString, long paramLong)
  {
    c.put(paramString, new aef.a(paramString, paramLong));
  }
  
  public final void a(@chd String paramString, boolean paramBoolean)
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
    Object localObject = (aef.c)b.get(paramString);
    boolean bool = paramBoolean;
    if (localObject != null)
    {
      bool = paramBoolean;
      if (!paramBoolean) {
        bool = c;
      }
    }
    localObject = new aef.c.a();
    a = paramString;
    localObject = ((aef.c.a)localObject).a((aef.c)b.get(paramString));
    c = bool;
    localObject = ((aef.c.a)localObject).a();
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
  
  public final void b(@chc String paramString, long paramLong)
  {
    d.put(paramString, new aef.b(paramString, paramLong));
  }
  
  public final boolean b(@chd String paramString)
  {
    if (paramString != null) {}
    for (paramString = (aef.c)b.get(paramString); (paramString != null) && (c); paramString = null) {
      return true;
    }
    return false;
  }
  
  public final long c(@chc String paramString)
  {
    paramString = (aef.a)c.get(paramString);
    if (paramString != null) {
      return b;
    }
    return 0L;
  }
  
  public final int d(@chc String paramString)
  {
    aef.c localc = (aef.c)b.get(paramString);
    if (localc != null) {
      return d;
    }
    if (e.containsKey(paramString)) {
      return -1;
    }
    return 0;
  }
  
  public final int e(@chc String paramString)
  {
    aef.c localc = (aef.c)b.get(paramString);
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
    @chc
    public String a;
    public long b;
    
    public b(@chc String paramString, long paramLong)
    {
      a = paramString;
      b = paramLong;
    }
  }
  
  public static final class c
  {
    @chc
    public final String a;
    public final int b;
    public final boolean c;
    final int d;
    final int e;
    public final Set<String> f;
    
    private c(aef.c.a parama)
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
      
      public final a a(@chd aef.c paramc)
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
      
      public final aef.c a()
      {
        if (a == null) {
          throw new IllegalArgumentException("Cannot build EditionViewState with null ID.");
        }
        return new aef.c(this, (byte)0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     aef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */