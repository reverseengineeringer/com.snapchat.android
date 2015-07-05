import java.net.Socket;

abstract class bmu$a
  implements caj
{
  protected boolean a;
  
  private bmu$a(bmu parambmu) {}
  
  public final cak E_()
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
      bmi.b.a(b.a, b.b);
    }
    while (b.f != 2) {
      return;
    }
    b.e = 6;
    b.b.c.close();
  }
  
  protected final void b()
  {
    bmp.a(b.b.c);
    b.e = 6;
  }
}

/* Location:
 * Qualified Name:     bmu.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */