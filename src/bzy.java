import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public final class bzy
  implements cai
{
  private final bzv a;
  private final Deflater b;
  private boolean c;
  
  private bzy(bzv parambzv, Deflater paramDeflater)
  {
    if (parambzv == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramDeflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    a = parambzv;
    b = paramDeflater;
  }
  
  public bzy(cai paramcai, Deflater paramDeflater)
  {
    this(cad.a(paramcai), paramDeflater);
  }
  
  @IgnoreJRERequirement
  private void a(boolean paramBoolean)
  {
    bzu localbzu = a.b();
    cag localcag;
    label119:
    do
    {
      localcag = localbzu.d(1);
      if (paramBoolean) {}
      for (int i = b.deflate(a, c, 2048 - c, 2);; i = b.deflate(a, c, 2048 - c))
      {
        if (i <= 0) {
          break label119;
        }
        c += i;
        b += i;
        a.q();
        break;
      }
    } while (!b.needsInput());
    if (b == c)
    {
      a = localcag.a();
      cah.a(localcag);
    }
  }
  
  public final cak E_()
  {
    return a.E_();
  }
  
  public final void a_(bzu parambzu, long paramLong)
  {
    cal.a(b, 0L, paramLong);
    while (paramLong > 0L)
    {
      cag localcag = a;
      int i = (int)Math.min(paramLong, c - b);
      b.setInput(a, b, i);
      a(false);
      b -= i;
      b += i;
      if (b == c)
      {
        a = localcag.a();
        cah.a(localcag);
      }
      paramLong -= i;
    }
  }
  
  public final void close()
  {
    if (c) {}
    for (;;)
    {
      return;
      Object localObject2 = null;
      try
      {
        b.finish();
        a(false);
        try
        {
          b.end();
          localObject1 = localObject2;
        }
        catch (Throwable localThrowable1)
        {
          for (;;)
          {
            Object localObject1;
            label42:
            if (localThrowable3 != null) {
              localThrowable2 = localThrowable3;
            }
          }
        }
        try
        {
          a.close();
          localObject2 = localObject1;
        }
        catch (Throwable localThrowable4)
        {
          Object localObject3 = localThrowable2;
          if (localThrowable2 != null) {
            break label42;
          }
          localObject3 = localThrowable4;
          break label42;
        }
        c = true;
        if (localObject2 == null) {
          continue;
        }
        cal.a((Throwable)localObject2);
        return;
      }
      catch (Throwable localThrowable3)
      {
        for (;;) {}
      }
    }
  }
  
  public final void flush()
  {
    a(true);
    a.flush();
  }
  
  public final String toString()
  {
    return "DeflaterSink(" + a + ")";
  }
}

/* Location:
 * Qualified Name:     bzy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */