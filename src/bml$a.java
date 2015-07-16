import java.util.List;

final class bml$a
  implements bmw.a
{
  private final int b;
  private final bnb c;
  private final boolean d;
  
  bml$a(bml parambml, int paramInt, bnb parambnb, boolean paramBoolean)
  {
    b = paramInt;
    c = parambnb;
    d = paramBoolean;
  }
  
  public final bnd a(bnb parambnb)
  {
    if (b < a.a.h.size())
    {
      new a(a, b + 1, parambnb, d);
      return ((bmw)a.a.h.get(b)).a();
    }
    return a.a(parambnb, d);
  }
}

/* Location:
 * Qualified Name:     bml.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */