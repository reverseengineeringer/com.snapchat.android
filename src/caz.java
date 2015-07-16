import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public final class caz
  implements cbj
{
  private final caw a;
  private final Deflater b;
  private boolean c;
  
  private caz(caw paramcaw, Deflater paramDeflater)
  {
    if (paramcaw == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramDeflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    a = paramcaw;
    b = paramDeflater;
  }
  
  public caz(cbj paramcbj, Deflater paramDeflater)
  {
    this(cbe.a(paramcbj), paramDeflater);
  }
  
  @IgnoreJRERequirement
  private void a(boolean paramBoolean)
  {
    cav localcav = a.b();
    cbh localcbh;
    label119:
    do
    {
      localcbh = localcav.d(1);
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
      a = localcbh.a();
      cbi.a(localcbh);
    }
  }
  
  public final cbl E_()
  {
    return a.E_();
  }
  
  public final void a_(cav paramcav, long paramLong)
  {
    cbm.a(b, 0L, paramLong);
    while (paramLong > 0L)
    {
      cbh localcbh = a;
      int i = (int)Math.min(paramLong, c - b);
      b.setInput(a, b, i);
      a(false);
      b -= i;
      b += i;
      if (b == c)
      {
        a = localcbh.a();
        cbi.a(localcbh);
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
        cbm.a((Throwable)localObject2);
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
 * Qualified Name:     caz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */