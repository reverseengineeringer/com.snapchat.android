import java.net.URL;
import java.util.List;

public final class bmw$a
  implements blv.a
{
  private final int b;
  private final bma c;
  private int d;
  
  public bmw$a(bmw parambmw, int paramInt, bma parambma)
  {
    b = paramInt;
    c = parambma;
  }
  
  public final bmc a(bma parambma)
  {
    d += 1;
    Object localObject1;
    Object localObject2;
    if (b > 0)
    {
      localObject1 = (blv)a.b.i.get(b - 1);
      localObject2 = aa).b.a;
      if ((!parambma.a().getHost().equals(b)) || (bmp.a(parambma.a()) != c)) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must retain the same host and port");
      }
      if (d > 1) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
      }
    }
    if (b < a.b.i.size())
    {
      parambma = new a(a, b + 1, parambma);
      localObject1 = (blv)a.b.i.get(b);
      localObject2 = ((blv)localObject1).a();
      if (d != 1) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
      }
      return (bmc)localObject2;
    }
    bmw.b(a).a(parambma);
    if ((a.c()) && (d != null))
    {
      localObject1 = cad.a(bmw.b(a).a(parambma, d.b()));
      d.a((bzv)localObject1);
      ((bzv)localObject1).close();
    }
    return bmw.c(a);
  }
}

/* Location:
 * Qualified Name:     bmw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */