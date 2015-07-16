public final class bom
{
  public static final cay a = cay.a(":status");
  public static final cay b = cay.a(":method");
  public static final cay c = cay.a(":path");
  public static final cay d = cay.a(":scheme");
  public static final cay e = cay.a(":authority");
  public static final cay f = cay.a(":host");
  public static final cay g = cay.a(":version");
  public final cay h;
  public final cay i;
  final int j;
  
  public bom(cay paramcay1, cay paramcay2)
  {
    h = paramcay1;
    i = paramcay2;
    j = (c.length + 32 + c.length);
  }
  
  public bom(cay paramcay, String paramString)
  {
    this(paramcay, cay.a(paramString));
  }
  
  public bom(String paramString1, String paramString2)
  {
    this(cay.a(paramString1), cay.a(paramString2));
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof bom))
    {
      paramObject = (bom)paramObject;
      bool1 = bool2;
      if (h.equals(h))
      {
        bool1 = bool2;
        if (i.equals(i)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    return (h.hashCode() + 527) * 31 + i.hashCode();
  }
  
  public final String toString()
  {
    return String.format("%s: %s", new Object[] { h.a(), i.a() });
  }
}

/* Location:
 * Qualified Name:     bom
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */