final class bmg$2
  extends bmh
{
  static
  {
    if (!bmg.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  bmg$2(bmg parambmg, cai paramcai)
  {
    super(paramcai);
  }
  
  protected final void a()
  {
    if ((!a) && (!Thread.holdsLock(b))) {
      throw new AssertionError();
    }
    bmg.g(b);
  }
}

/* Location:
 * Qualified Name:     bmg.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */