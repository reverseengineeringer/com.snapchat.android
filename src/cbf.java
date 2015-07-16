final class cbf
  implements caw
{
  public final cav a;
  public final cbj b;
  private boolean c;
  
  public cbf(cbj paramcbj)
  {
    this(paramcbj, new cav());
  }
  
  private cbf(cbj paramcbj, cav paramcav)
  {
    if (paramcbj == null) {
      throw new IllegalArgumentException("sink == null");
    }
    a = paramcav;
    b = paramcbj;
  }
  
  public final cbl E_()
  {
    return b.E_();
  }
  
  public final long a(cbk paramcbk)
  {
    if (paramcbk == null) {
      throw new IllegalArgumentException("source == null");
    }
    long l1 = 0L;
    for (;;)
    {
      long l2 = paramcbk.a(a, 2048L);
      if (l2 == -1L) {
        break;
      }
      l1 += l2;
      q();
    }
    return l1;
  }
  
  public final void a_(cav paramcav, long paramLong)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.a_(paramcav, paramLong);
    q();
  }
  
  public final cav b()
  {
    return a;
  }
  
  public final caw b(cay paramcay)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.a(paramcay);
    return q();
  }
  
  public final caw b(String paramString)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.a(paramString);
    return q();
  }
  
  public final caw b(byte[] paramArrayOfByte)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.a(paramArrayOfByte);
    return q();
  }
  
  public final caw c()
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    long l = a.b;
    if (l > 0L) {
      b.a_(a, l);
    }
    return this;
  }
  
  public final caw c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.b(paramArrayOfByte, paramInt1, paramInt2);
    return q();
  }
  
  public final void close()
  {
    if (c) {}
    do
    {
      return;
      localObject2 = null;
      localObject1 = localObject2;
      for (;;)
      {
        try
        {
          if (a.b > 0L)
          {
            b.a_(a, a.b);
            localObject1 = localObject2;
          }
        }
        catch (Throwable localThrowable1)
        {
          continue;
        }
        try
        {
          b.close();
          localObject2 = localObject1;
        }
        catch (Throwable localThrowable2)
        {
          localObject2 = localObject1;
          if (localObject1 != null) {
            continue;
          }
          localObject2 = localThrowable2;
        }
      }
      c = true;
    } while (localObject2 == null);
    cbm.a((Throwable)localObject2);
  }
  
  public final caw e(int paramInt)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.c(paramInt);
    return q();
  }
  
  public final caw f(int paramInt)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.b(paramInt);
    return q();
  }
  
  public final void flush()
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    if (a.b > 0L) {
      b.a_(a, a.b);
    }
    b.flush();
  }
  
  public final caw g(int paramInt)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.a(paramInt);
    return q();
  }
  
  public final caw i(long paramLong)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.h(paramLong);
    return q();
  }
  
  public final caw j(long paramLong)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.g(paramLong);
    return q();
  }
  
  public final caw q()
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    Object localObject = a;
    long l2 = b;
    long l1;
    if (l2 == 0L) {
      l1 = 0L;
    }
    for (;;)
    {
      if (l1 > 0L) {
        b.a_(a, l1);
      }
      return this;
      localObject = a.g;
      l1 = l2;
      if (c < 2048)
      {
        l1 = l2;
        if (e) {
          l1 = l2 - (c - b);
        }
      }
    }
  }
  
  public final String toString()
  {
    return "buffer(" + b + ")";
  }
}

/* Location:
 * Qualified Name:     cbf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */