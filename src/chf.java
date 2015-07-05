public abstract class chf
  implements chb, Comparable<chb>
{
  private int c(cgi paramcgi)
  {
    int i = 0;
    int j = a();
    while (i < j)
    {
      if (c(i) == paramcgi) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public int a(cgi paramcgi)
  {
    int i = c(paramcgi);
    if (i == -1) {
      throw new IllegalArgumentException("Field '" + paramcgi + "' is not supported");
    }
    return a(i);
  }
  
  public int a(chb paramchb)
  {
    if (this == paramchb) {}
    for (;;)
    {
      return 0;
      if (a() != paramchb.a()) {
        throw new ClassCastException("ReadablePartial objects must have matching field types");
      }
      int j = a();
      int i = 0;
      while (i < j)
      {
        if (c(i) != paramchb.c(i)) {
          throw new ClassCastException("ReadablePartial objects must have matching field types");
        }
        i += 1;
      }
      j = a();
      i = 0;
      while (i < j)
      {
        if (a(i) > paramchb.a(i)) {
          return 1;
        }
        if (a(i) < paramchb.a(i)) {
          return -1;
        }
        i += 1;
      }
    }
  }
  
  public abstract cgh a(int paramInt, cgf paramcgf);
  
  public boolean b(cgi paramcgi)
  {
    return c(paramcgi) != -1;
  }
  
  public final boolean b(chb paramchb)
  {
    if (paramchb == null) {
      throw new IllegalArgumentException("Partial cannot be null");
    }
    return a(paramchb) > 0;
  }
  
  public final cgi c(int paramInt)
  {
    return a(paramInt, b()).a();
  }
  
  public final boolean c(chb paramchb)
  {
    if (paramchb == null) {
      throw new IllegalArgumentException("Partial cannot be null");
    }
    return a(paramchb) < 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof chb));
      paramObject = (chb)paramObject;
      bool1 = bool2;
    } while (a() != ((chb)paramObject).a());
    int j = a();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label104;
      }
      bool1 = bool2;
      if (a(i) != ((chb)paramObject).a(i)) {
        break;
      }
      bool1 = bool2;
      if (c(i) != ((chb)paramObject).c(i)) {
        break;
      }
      i += 1;
    }
    label104:
    return cjh.a(b(), ((chb)paramObject).b());
  }
  
  public int hashCode()
  {
    int j = 157;
    int i = 0;
    int k = a();
    while (i < k)
    {
      j = (j * 23 + a(i)) * 23 + c(i).hashCode();
      i += 1;
    }
    return b().hashCode() + j;
  }
}

/* Location:
 * Qualified Name:     chf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */