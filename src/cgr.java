final class cgr
{
  static cgr j;
  static cgr k;
  static cgr l;
  boolean a = true;
  boolean b = true;
  boolean c = false;
  boolean d = false;
  boolean e = false;
  boolean f = true;
  boolean g = true;
  boolean h = true;
  int i;
  
  static
  {
    cgr localcgr = new cgr();
    j = localcgr;
    a = true;
    jb = false;
    jc = false;
    jd = false;
    je = true;
    jf = false;
    jg = false;
    ji = 0;
    localcgr = new cgr();
    k = localcgr;
    a = true;
    kb = true;
    kc = false;
    kd = false;
    ke = false;
    ji = 1;
    localcgr = new cgr();
    l = localcgr;
    a = false;
    lb = true;
    lc = false;
    ld = true;
    le = false;
    lh = false;
    li = 2;
  }
  
  static String a(String paramString)
  {
    int m = paramString.lastIndexOf('-');
    if (m == -1) {
      return paramString;
    }
    return paramString.substring(m + 1);
  }
  
  public final String a(Class paramClass)
  {
    return a(paramClass, paramClass.getName(), a);
  }
  
  final String a(Class paramClass, String paramString, boolean paramBoolean)
  {
    if (paramClass == null) {
      return "ANONYMOUS";
    }
    if (paramClass.isArray())
    {
      paramClass = paramClass.getComponentType();
      return a(paramClass, paramClass.getName(), paramBoolean) + "[]";
    }
    if (paramBoolean)
    {
      int m = paramString.lastIndexOf('.');
      if (m == -1) {}
      for (;;)
      {
        return paramString.replace('$', '.');
        paramString = paramString.substring(m + 1);
      }
    }
    return paramString.replace('$', '.');
  }
  
  public final void a(StringBuffer paramStringBuffer, Class[] paramArrayOfClass)
  {
    int m = 0;
    while (m < paramArrayOfClass.length)
    {
      if (m > 0) {
        paramStringBuffer.append(", ");
      }
      paramStringBuffer.append(a(paramArrayOfClass[m]));
      m += 1;
    }
  }
}

/* Location:
 * Qualified Name:     cgr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */