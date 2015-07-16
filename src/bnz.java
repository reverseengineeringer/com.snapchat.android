import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;

public final class bnz
  implements boh
{
  private final bnx a;
  private final bnv b;
  
  public bnz(bnx parambnx, bnv parambnv)
  {
    a = parambnx;
    b = parambnv;
  }
  
  public final bne a(bnd parambnd)
  {
    Object localObject;
    if (!bnx.c(parambnd)) {
      localObject = b.a(0L);
    }
    for (;;)
    {
      return new bob(f, cbe.a((cbk)localObject));
      if ("chunked".equalsIgnoreCase(parambnd.a("Transfer-Encoding")))
      {
        localObject = b;
        bnx localbnx = a;
        if (e != 4) {
          throw new IllegalStateException("state: " + e);
        }
        e = 5;
        localObject = new bnv.c((bnv)localObject, localbnx);
      }
      else
      {
        long l = boa.a(parambnd);
        if (l != -1L)
        {
          localObject = b.a(l);
        }
        else
        {
          localObject = b;
          if (e != 4) {
            throw new IllegalStateException("state: " + e);
          }
          e = 5;
          localObject = new bnv.f((bnv)localObject, (byte)0);
        }
      }
    }
  }
  
  public final cbj a(bnb parambnb, long paramLong)
  {
    if ("chunked".equalsIgnoreCase(parambnb.a("Transfer-Encoding")))
    {
      parambnb = b;
      if (e != 1) {
        throw new IllegalStateException("state: " + e);
      }
      e = 2;
      return new bnv.b(parambnb, (byte)0);
    }
    if (paramLong != -1L)
    {
      parambnb = b;
      if (e != 1) {
        throw new IllegalStateException("state: " + e);
      }
      e = 2;
      return new bnv.d(parambnb, paramLong, (byte)0);
    }
    throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
  }
  
  public final void a()
  {
    b.a();
  }
  
  public final void a(bnb parambnb)
  {
    a.b();
    Object localObject = a.c.b.b.type();
    bna localbna = a.c.g;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(b);
    localStringBuilder.append(' ');
    int i;
    if ((!parambnb.e()) && (localObject == Proxy.Type.HTTP))
    {
      i = 1;
      if (i == 0) {
        break label136;
      }
      localStringBuilder.append(parambnb.a());
    }
    for (;;)
    {
      localStringBuilder.append(' ');
      localStringBuilder.append(boc.a(localbna));
      localObject = localStringBuilder.toString();
      b.a(c, (String)localObject);
      return;
      i = 0;
      break;
      label136:
      localStringBuilder.append(boc.a(parambnb.a()));
    }
  }
  
  public final void a(bod parambod)
  {
    bnv localbnv = b;
    if (e != 1) {
      throw new IllegalStateException("state: " + e);
    }
    e = 3;
    parambod.a(d);
  }
  
  public final bnd.a b()
  {
    return b.c();
  }
  
  public final void c()
  {
    bnv localbnv;
    if (d())
    {
      localbnv = b;
      f = 1;
      if (e == 0)
      {
        f = 0;
        bnj.b.a(a, b);
      }
    }
    do
    {
      return;
      localbnv = b;
      f = 2;
    } while (e != 0);
    e = 6;
    b.c.close();
  }
  
  public final boolean d()
  {
    if ("close".equalsIgnoreCase(a.l.a("Connection"))) {}
    for (;;)
    {
      return false;
      if (!"close".equalsIgnoreCase(a.d().a("Connection")))
      {
        if (b.e == 6) {}
        for (int i = 1; i == 0; i = 0) {
          return true;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     bnz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */