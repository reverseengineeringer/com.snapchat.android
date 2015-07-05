import java.util.Hashtable;
import java.util.StringTokenizer;

public final class cfk
{
  static Hashtable e;
  static Class f;
  private static Object[] g = new Object[0];
  Class a;
  ClassLoader b;
  String c;
  int d;
  
  static
  {
    Hashtable localHashtable = new Hashtable();
    e = localHashtable;
    localHashtable.put("void", Void.TYPE);
    e.put("boolean", Boolean.TYPE);
    e.put("byte", Byte.TYPE);
    e.put("char", Character.TYPE);
    e.put("short", Short.TYPE);
    e.put("int", Integer.TYPE);
    e.put("long", Long.TYPE);
    e.put("float", Float.TYPE);
    e.put("double", Double.TYPE);
  }
  
  public cfk(String paramString, Class paramClass)
  {
    c = paramString;
    a = paramClass;
    d = 0;
    b = paramClass.getClassLoader();
  }
  
  public static cek a(cek.a parama, Object paramObject1, Object paramObject2)
  {
    return new cfl(parama, paramObject1, paramObject2, g);
  }
  
  public static cek a(cek.a parama, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    return new cfl(parama, paramObject1, paramObject2, new Object[] { paramObject3 });
  }
  
  private static Class a(String paramString)
  {
    try
    {
      paramString = Class.forName(paramString);
      return paramString;
    }
    catch (ClassNotFoundException paramString)
    {
      throw new NoClassDefFoundError(paramString.getMessage());
    }
  }
  
  static Class a(String paramString, ClassLoader paramClassLoader)
  {
    Object localObject;
    if (paramString.equals("*")) {
      localObject = null;
    }
    Class localClass;
    do
    {
      return (Class)localObject;
      localClass = (Class)e.get(paramString);
      localObject = localClass;
    } while (localClass != null);
    if (paramClassLoader == null) {}
    try
    {
      return Class.forName(paramString);
    }
    catch (ClassNotFoundException paramString)
    {
      if (f != null) {
        break label67;
      }
      paramString = a("java.lang.ClassNotFoundException");
      f = paramString;
      return paramString;
    }
    paramString = Class.forName(paramString, false, paramClassLoader);
    return paramString;
    label67:
    return f;
  }
  
  public final cek.a a(String paramString, cen paramcen, int paramInt)
  {
    int i = d;
    d = (i + 1);
    return new cfl.a(i, paramString, paramcen, new cfp(a, c, paramInt));
  }
  
  public final cfg a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    int j = Integer.parseInt(paramString1, 16);
    paramString1 = a(paramString3, b);
    paramString4 = new StringTokenizer(paramString4, ":");
    int k = paramString4.countTokens();
    paramString3 = new Class[k];
    int i = 0;
    while (i < k)
    {
      paramString3[i] = a(paramString4.nextToken(), b);
      i += 1;
    }
    paramString5 = new StringTokenizer(paramString5, ":");
    k = paramString5.countTokens();
    paramString4 = new String[k];
    i = 0;
    while (i < k)
    {
      paramString4[i] = paramString5.nextToken();
      i += 1;
    }
    paramString5 = new StringTokenizer(paramString6, ":");
    k = paramString5.countTokens();
    paramString6 = new Class[k];
    i = 0;
    while (i < k)
    {
      paramString6[i] = a(paramString5.nextToken(), b);
      i += 1;
    }
    return new cfn(j, paramString2, paramString1, paramString3, paramString4, paramString6, a(paramString7, b));
  }
}

/* Location:
 * Qualified Name:     cfk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */