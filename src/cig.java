public abstract class cig
  implements cic, Comparable<cic>
{
  private int c(chj paramchj)
  {
    int i = 0;
    int j = a();
    while (i < j)
    {
      if (c(i) == paramchj) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public int a(chj paramchj)
  {
    int i = c(paramchj);
    if (i == -1) {
      throw new IllegalArgumentException("Field '" + paramchj + "' is not supported");
    }
    return a(i);
  }
  
  public int a(cic paramcic)
  {
    if (this == paramcic) {}
    for (;;)
    {
      return 0;
      if (a() != paramcic.a()) {
        throw new ClassCastException("ReadablePartial objects must have matching field types");
      }
      int j = a();
      int i = 0;
      while (i < j)
      {
        if (c(i) != paramcic.c(i)) {
          throw new ClassCastException("ReadablePartial objects must have matching field types");
        }
        i += 1;
      }
      j = a();
      i = 0;
      while (i < j)
      {
        if (a(i) > paramcic.a(i)) {
          return 1;
        }
        if (a(i) < paramcic.a(i)) {
          return -1;
        }
        i += 1;
      }
    }
  }
  
  public abstract chi a(int paramInt, chg paramchg);
  
  public boolean b(chj paramchj)
  {
    return c(paramchj) != -1;
  }
  
  public final boolean b(cic paramcic)
  {
    if (paramcic == null) {
      throw new IllegalArgumentException("Partial cannot be null");
    }
    return a(paramcic) > 0;
  }
  
  public final chj c(int paramInt)
  {
    return a(paramInt, b()).a();
  }
  
  public final boolean c(cic paramcic)
  {
    if (paramcic == null) {
      throw new IllegalArgumentException("Partial cannot be null");
    }
    return a(paramcic) < 0;
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
      } while (!(paramObject instanceof cic));
      paramObject = (cic)paramObject;
      bool1 = bool2;
    } while (a() != ((cic)paramObject).a());
    int j = a();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label104;
      }
      bool1 = bool2;
      if (a(i) != ((cic)paramObject).a(i)) {
        break;
      }
      bool1 = bool2;
      if (c(i) != ((cic)paramObject).c(i)) {
        break;
      }
      i += 1;
    }
    label104:
    return cki.a(b(), ((cic)paramObject).b());
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
 * Qualified Name:     cig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */