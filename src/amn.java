public abstract class amn
  implements alw.a
{
  protected final axn a;
  protected final String b;
  
  public amn(axn paramaxn, String paramString)
  {
    a = ((axn)co.a(paramaxn));
    b = ((String)co.a(paramString));
  }
  
  public final void a(aly paramaly)
  {
    throw new UnsupportedOperationException("onCanceled has not been implemented for media downloads.");
  }
  
  public final void a(aly paramaly, bgl parambgl, us paramus)
  {
    paramaly = null;
    if ((paramus != null) && (paramus.d())) {}
    try
    {
      a(parambgl);
      for (;;)
      {
        a(paramus, paramaly);
        return;
      }
    }
    catch (Exception paramaly)
    {
      for (;;) {}
    }
  }
  
  protected void a(bgl parambgl)
  {
    co.a(parambgl);
    if (mSize > 0) {}
    for (boolean bool = true;; bool = false)
    {
      co.a(bool);
      a.a(b, mBuffer, mSize);
      return;
    }
  }
  
  public abstract void a(us paramus, Exception paramException);
}

/* Location:
 * Qualified Name:     amn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */