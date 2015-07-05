import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;

public final class bmy
  implements bng
{
  private final bmw a;
  private final bmu b;
  
  public bmy(bmw parambmw, bmu parambmu)
  {
    a = parambmw;
    b = parambmu;
  }
  
  public final bmd a(bmc parambmc)
  {
    Object localObject;
    if (!bmw.c(parambmc)) {
      localObject = b.a(0L);
    }
    for (;;)
    {
      return new bna(f, cad.a((caj)localObject));
      if ("chunked".equalsIgnoreCase(parambmc.a("Transfer-Encoding")))
      {
        localObject = b;
        bmw localbmw = a;
        if (e != 4) {
          throw new IllegalStateException("state: " + e);
        }
        e = 5;
        localObject = new bmu.c((bmu)localObject, localbmw);
      }
      else
      {
        long l = bmz.a(parambmc);
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
          localObject = new bmu.f((bmu)localObject, (byte)0);
        }
      }
    }
  }
  
  public final cai a(bma parambma, long paramLong)
  {
    if ("chunked".equalsIgnoreCase(parambma.a("Transfer-Encoding")))
    {
      parambma = b;
      if (e != 1) {
        throw new IllegalStateException("state: " + e);
      }
      e = 2;
      return new bmu.b(parambma, (byte)0);
    }
    if (paramLong != -1L)
    {
      parambma = b;
      if (e != 1) {
        throw new IllegalStateException("state: " + e);
      }
      e = 2;
      return new bmu.d(parambma, paramLong, (byte)0);
    }
    throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
  }
  
  public final void a()
  {
    b.a();
  }
  
  public final void a(bma parambma)
  {
    a.b();
    Object localObject = a.c.b.b.type();
    blz localblz = a.c.g;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(b);
    localStringBuilder.append(' ');
    int i;
    if ((!parambma.e()) && (localObject == Proxy.Type.HTTP))
    {
      i = 1;
      if (i == 0) {
        break label136;
      }
      localStringBuilder.append(parambma.a());
    }
    for (;;)
    {
      localStringBuilder.append(' ');
      localStringBuilder.append(bnb.a(localblz));
      localObject = localStringBuilder.toString();
      b.a(c, (String)localObject);
      return;
      i = 0;
      break;
      label136:
      localStringBuilder.append(bnb.a(parambma.a()));
    }
  }
  
  public final void a(bnc parambnc)
  {
    bmu localbmu = b;
    if (e != 1) {
      throw new IllegalStateException("state: " + e);
    }
    e = 3;
    parambnc.a(d);
  }
  
  public final bmc.a b()
  {
    return b.c();
  }
  
  public final void c()
  {
    bmu localbmu;
    if (d())
    {
      localbmu = b;
      f = 1;
      if (e == 0)
      {
        f = 0;
        bmi.b.a(a, b);
      }
    }
    do
    {
      return;
      localbmu = b;
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
 * Qualified Name:     bmy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */