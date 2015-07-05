final class chv$b
  extends chv.a
{
  chv$b(chv paramchv, cgh paramcgh1, cgh paramcgh2, long paramLong)
  {
    this(paramchv, paramcgh1, paramcgh2, null, paramLong, false);
  }
  
  chv$b(chv paramchv, cgh paramcgh1, cgh paramcgh2, cgm paramcgm, long paramLong)
  {
    this(paramchv, paramcgh1, paramcgh2, paramcgm, paramLong, false);
  }
  
  chv$b(chv paramchv, cgh paramcgh1, cgh paramcgh2, cgm paramcgm, long paramLong, boolean paramBoolean)
  {
    super(paramchv, paramcgh1, paramcgh2, paramLong, paramBoolean);
    paramchv = paramcgm;
    if (paramcgm == null) {
      paramchv = new chv.c(e, this);
    }
    e = paramchv;
  }
  
  public final long a(long paramLong, int paramInt)
  {
    long l;
    if (paramLong >= c)
    {
      l = b.a(paramLong, paramInt);
      paramLong = l;
      if (l < c)
      {
        paramLong = l;
        if (chv.a(h) + l < c)
        {
          if (!d) {
            break label107;
          }
          paramLong = l;
          if (bh).w.a(l) <= 0) {
            paramLong = bh).w.a(l, -1);
          }
          paramLong = k(paramLong);
        }
      }
    }
    label107:
    do
    {
      do
      {
        return paramLong;
        paramLong = l;
        if (bh).z.a(l) > 0) {
          break;
        }
        paramLong = bh).z.a(l, -1);
        break;
        l = a.a(paramLong, paramInt);
        paramLong = l;
      } while (l < c);
      paramLong = l;
    } while (l - chv.a(h) < c);
    return j(l);
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    if (paramLong1 >= c)
    {
      paramLong2 = b.a(paramLong1, paramLong2);
      paramLong1 = paramLong2;
      if (paramLong2 < c)
      {
        paramLong1 = paramLong2;
        if (chv.a(h) + paramLong2 < c)
        {
          if (!d) {
            break label99;
          }
          paramLong1 = paramLong2;
          if (bh).w.a(paramLong2) <= 0) {
            paramLong1 = bh).w.a(paramLong2, -1);
          }
          paramLong1 = k(paramLong1);
        }
      }
    }
    label99:
    do
    {
      do
      {
        return paramLong1;
        paramLong1 = paramLong2;
        if (bh).z.a(paramLong2) > 0) {
          break;
        }
        paramLong1 = bh).z.a(paramLong2, -1);
        break;
        paramLong2 = a.a(paramLong1, paramLong2);
        paramLong1 = paramLong2;
      } while (paramLong2 < c);
      paramLong1 = paramLong2;
    } while (paramLong2 - chv.a(h) < c);
    return j(paramLong2);
  }
  
  public final int b(long paramLong1, long paramLong2)
  {
    if (paramLong1 >= c)
    {
      if (paramLong2 >= c) {
        return b.b(paramLong1, paramLong2);
      }
      paramLong1 = k(paramLong1);
      return a.b(paramLong1, paramLong2);
    }
    if (paramLong2 < c) {
      return a.b(paramLong1, paramLong2);
    }
    paramLong1 = j(paramLong1);
    return b.b(paramLong1, paramLong2);
  }
  
  public final int c(long paramLong)
  {
    if (paramLong >= c) {
      return b.c(paramLong);
    }
    return a.c(paramLong);
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    if (paramLong1 >= c)
    {
      if (paramLong2 >= c) {
        return b.c(paramLong1, paramLong2);
      }
      paramLong1 = k(paramLong1);
      return a.c(paramLong1, paramLong2);
    }
    if (paramLong2 < c) {
      return a.c(paramLong1, paramLong2);
    }
    paramLong1 = j(paramLong1);
    return b.c(paramLong1, paramLong2);
  }
}

/* Location:
 * Qualified Name:     chv.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */