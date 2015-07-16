final class bnh$2
  extends bni
{
  static
  {
    if (!bnh.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  bnh$2(bnh parambnh, cbj paramcbj)
  {
    super(paramcbj);
  }
  
  protected final void a()
  {
    if ((!a) && (!Thread.holdsLock(b))) {
      throw new AssertionError();
    }
    bnh.g(b);
  }
}

/* Location:
 * Qualified Name:     bnh.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */