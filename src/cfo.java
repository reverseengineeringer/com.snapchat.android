import java.lang.ref.SoftReference;
import java.util.StringTokenizer;

abstract class cfo
  implements cen
{
  private static boolean a = true;
  static String[] k = new String[0];
  static Class[] l = new Class[0];
  private String b;
  int e = -1;
  String f;
  String g;
  Class h;
  cfo.a i;
  ClassLoader j = null;
  
  cfo(int paramInt, String paramString, Class paramClass)
  {
    e = paramInt;
    f = paramString;
    h = paramClass;
  }
  
  private ClassLoader a()
  {
    if (j == null) {
      j = getClass().getClassLoader();
    }
    return j;
  }
  
  final String a(int paramInt)
  {
    int m = 0;
    int i1 = b.indexOf('-');
    int n = paramInt;
    paramInt = i1;
    while (n > 0)
    {
      m = paramInt + 1;
      paramInt = b.indexOf('-', m);
      n -= 1;
    }
    n = paramInt;
    if (paramInt == -1) {
      n = b.length();
    }
    return b.substring(m, n);
  }
  
  protected abstract String a(cfq paramcfq);
  
  final Class b(int paramInt)
  {
    return cfk.a(a(paramInt), a());
  }
  
  final String b(cfq paramcfq)
  {
    Object localObject3 = null;
    Object localObject1 = localObject3;
    if ((!a) || (i == null)) {}
    for (;;)
    {
      try
      {
        i = new cfo.b();
        localObject1 = localObject3;
      }
      catch (Throwable localThrowable)
      {
        a = false;
        localObject2 = localObject3;
        continue;
      }
      localObject3 = localObject1;
      if (localObject1 == null) {
        localObject3 = a(paramcfq);
      }
      if (a) {
        i.a(i, (String)localObject3);
      }
      return (String)localObject3;
      Object localObject2 = i.a(i);
    }
  }
  
  public final Class c()
  {
    if (h == null) {
      h = b(2);
    }
    return h;
  }
  
  final Class[] c(int paramInt)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(a(paramInt), ":");
    int m = localStringTokenizer.countTokens();
    Class[] arrayOfClass = new Class[m];
    paramInt = 0;
    while (paramInt < m)
    {
      arrayOfClass[paramInt] = cfk.a(localStringTokenizer.nextToken(), a());
      paramInt += 1;
    }
    return arrayOfClass;
  }
  
  public final String toString()
  {
    return b(cfq.k);
  }
  
  static abstract interface a
  {
    public abstract String a(int paramInt);
    
    public abstract void a(int paramInt, String paramString);
  }
  
  static final class b
    implements cfo.a
  {
    private SoftReference a;
    
    public b()
    {
      b();
    }
    
    private String[] a()
    {
      return (String[])a.get();
    }
    
    private String[] b()
    {
      String[] arrayOfString = new String[3];
      a = new SoftReference(arrayOfString);
      return arrayOfString;
    }
    
    public final String a(int paramInt)
    {
      String[] arrayOfString = a();
      if (arrayOfString == null) {
        return null;
      }
      return arrayOfString[paramInt];
    }
    
    public final void a(int paramInt, String paramString)
    {
      String[] arrayOfString2 = a();
      String[] arrayOfString1 = arrayOfString2;
      if (arrayOfString2 == null) {
        arrayOfString1 = b();
      }
      arrayOfString1[paramInt] = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     cfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */