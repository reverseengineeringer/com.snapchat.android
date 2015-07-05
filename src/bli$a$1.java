final class bli$a$1
  extends bzz
{
  bli$a$1(bli.a parama, cai paramcai, bli parambli, bmg.a parama1)
  {
    super(paramcai);
  }
  
  public final void close()
  {
    synchronized (c.b)
    {
      if (c.a) {
        return;
      }
      c.a = true;
      bli localbli2 = c.b;
      b += 1;
      super.close();
      b.a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bli.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */