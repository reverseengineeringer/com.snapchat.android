final class ciw$b
  extends ciw.a
{
  ciw$b(ciw paramciw, chi paramchi1, chi paramchi2, long paramLong)
  {
    this(paramciw, paramchi1, paramchi2, null, paramLong, false);
  }
  
  ciw$b(ciw paramciw, chi paramchi1, chi paramchi2, chn paramchn, long paramLong)
  {
    this(paramciw, paramchi1, paramchi2, paramchn, paramLong, false);
  }
  
  ciw$b(ciw paramciw, chi paramchi1, chi paramchi2, chn paramchn, long paramLong, boolean paramBoolean)
  {
    super(paramciw, paramchi1, paramchi2, paramLong, paramBoolean);
    paramciw = paramchn;
    if (paramchn == null) {
      paramciw = new ciw.c(e, this);
    }
    e = paramciw;
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
        if (ciw.a(h) + l < c)
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
    } while (l - ciw.a(h) < c);
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
        if (ciw.a(h) + paramLong2 < c)
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
    } while (paramLong2 - ciw.a(h) < c);
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
 * Qualified Name:     ciw.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */