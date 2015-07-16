public final class brp
  extends brl
{
  private int g;
  
  public brp(brg parambrg, int paramInt)
  {
    super(parambrg);
    g = paramInt;
  }
  
  protected final brg g()
  {
    if ((a.c().equals("HEAD")) || ((g >= 100) && (g <= 199)) || (g == 204) || (g == 304)) {}
    for (int i = 1; i != 0; i = 0)
    {
      a.b(a());
      return a.b();
    }
    if (f) {
      return new brj(this);
    }
    if (d)
    {
      if (e > 0) {
        return new brh(this, e);
      }
      a.b(a());
      return a.b();
    }
    if (a.c().equals("CONNECT"))
    {
      a.b(a());
      return a.b();
    }
    return new brk(this);
  }
}

/* Location:
 * Qualified Name:     brp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */