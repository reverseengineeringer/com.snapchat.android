public final class bnl
{
  public static final bzx a = bzx.a(":status");
  public static final bzx b = bzx.a(":method");
  public static final bzx c = bzx.a(":path");
  public static final bzx d = bzx.a(":scheme");
  public static final bzx e = bzx.a(":authority");
  public static final bzx f = bzx.a(":host");
  public static final bzx g = bzx.a(":version");
  public final bzx h;
  public final bzx i;
  final int j;
  
  public bnl(bzx parambzx1, bzx parambzx2)
  {
    h = parambzx1;
    i = parambzx2;
    j = (c.length + 32 + c.length);
  }
  
  public bnl(bzx parambzx, String paramString)
  {
    this(parambzx, bzx.a(paramString));
  }
  
  public bnl(String paramString1, String paramString2)
  {
    this(bzx.a(paramString1), bzx.a(paramString2));
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof bnl))
    {
      paramObject = (bnl)paramObject;
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
 * Qualified Name:     bnl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */