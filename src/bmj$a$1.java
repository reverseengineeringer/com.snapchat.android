final class bmj$a$1
  extends cba
{
  bmj$a$1(bmj.a parama, cbj paramcbj, bmj parambmj, bnh.a parama1)
  {
    super(paramcbj);
  }
  
  public final void close()
  {
    synchronized (c.b)
    {
      if (c.a) {
        return;
      }
      c.a = true;
      bmj localbmj2 = c.b;
      b += 1;
      super.close();
      b.a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bmj.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */