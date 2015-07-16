import java.net.URL;
import java.util.List;

public final class bnx$a
  implements bmw.a
{
  private final int b;
  private final bnb c;
  private int d;
  
  public bnx$a(bnx parambnx, int paramInt, bnb parambnb)
  {
    b = paramInt;
    c = parambnb;
  }
  
  public final bnd a(bnb parambnb)
  {
    d += 1;
    Object localObject1;
    Object localObject2;
    if (b > 0)
    {
      localObject1 = (bmw)a.b.i.get(b - 1);
      localObject2 = aa).b.a;
      if ((!parambnb.a().getHost().equals(b)) || (bnq.a(parambnb.a()) != c)) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must retain the same host and port");
      }
      if (d > 1) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
      }
    }
    if (b < a.b.i.size())
    {
      parambnb = new a(a, b + 1, parambnb);
      localObject1 = (bmw)a.b.i.get(b);
      localObject2 = ((bmw)localObject1).a();
      if (d != 1) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
      }
      return (bnd)localObject2;
    }
    bnx.b(a).a(parambnb);
    if ((a.c()) && (d != null))
    {
      localObject1 = cbe.a(bnx.b(a).a(parambnb, d.b()));
      d.a((caw)localObject1);
      ((caw)localObject1).close();
    }
    return bnx.c(a);
  }
}

/* Location:
 * Qualified Name:     bnx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */