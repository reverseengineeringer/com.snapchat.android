import java.net.Socket;

abstract class bnv$a
  implements cbk
{
  protected boolean a;
  
  private bnv$a(bnv parambnv) {}
  
  public final cbl E_()
  {
    return b.c.E_();
  }
  
  protected final void a(boolean paramBoolean)
  {
    if (b.e != 5) {
      throw new IllegalStateException("state: " + b.e);
    }
    b.e = 0;
    if ((paramBoolean) && (b.f == 1))
    {
      b.f = 0;
      bnj.b.a(b.a, b.b);
    }
    while (b.f != 2) {
      return;
    }
    b.e = 6;
    b.b.c.close();
  }
  
  protected final void b()
  {
    bnq.a(b.b.c);
    b.e = 6;
  }
}

/* Location:
 * Qualified Name:     bnv.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */