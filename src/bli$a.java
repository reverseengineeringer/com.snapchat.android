import java.io.IOException;

final class bli$a
  implements bmr
{
  boolean a;
  private final bmg.a c;
  private cai d;
  private cai e;
  
  public bli$a(final bli parambli, final bmg.a parama)
  {
    c = parama;
    d = parama.a(1);
    e = new bzz(d)
    {
      public final void close()
      {
        synchronized (b)
        {
          if (a) {
            return;
          }
          a = true;
          bli localbli2 = b;
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
      bli localbli2 = b;
      c += 1;
      bmp.a(d);
      try
      {
        c.b();
        return;
      }
      catch (IOException localIOException) {}
    }
  }
  
  public final cai b()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     bli.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */