public final class aiv
  implements alw.a
{
  private final axn a;
  private final ajb b;
  
  public aiv(@chc axn paramaxn, @chc ajb paramajb)
  {
    a = ((axn)co.a(paramaxn));
    b = ((ajb)co.a(paramajb));
  }
  
  public final void a(aly paramaly)
  {
    b.a(d, false);
  }
  
  @cbr
  public final void a(aly paramaly, bgl parambgl, us paramus)
  {
    if (paramus == null)
    {
      b.a(d, false);
      return;
    }
    if (!paramus.d())
    {
      b.a(d, false);
      return;
    }
    if ((parambgl == null) || (mSize <= 0))
    {
      b.a(d, false);
      return;
    }
    paramaly = d;
    try
    {
      a.a(paramaly, mBuffer);
      b.a(paramaly, true);
      return;
    }
    catch (axq parambgl)
    {
      for (;;)
      {
        b.a(paramaly, false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     aiv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */