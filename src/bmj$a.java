import java.io.IOException;

final class bmj$a
  implements bns
{
  boolean a;
  private final bnh.a c;
  private cbj d;
  private cbj e;
  
  public bmj$a(final bmj parambmj, final bnh.a parama)
  {
    c = parama;
    d = parama.a(1);
    e = new cba(d)
    {
      public final void close()
      {
        synchronized (b)
        {
          if (a) {
            return;
          }
          a = true;
          bmj localbmj2 = b;
          b += 1;
          super.close();
          parama.a();
          return;
        }
      }
    };
  }
  
  public final void a()
  {
    synchronized (b)
    {
      if (a) {
        return;
      }
      a = true;
      bmj localbmj2 = b;
      c += 1;
      bnq.a(d);
      try
      {
        c.b();
        return;
      }
      catch (IOException localIOException) {}
    }
  }
  
  public final cbj b()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     bmj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */