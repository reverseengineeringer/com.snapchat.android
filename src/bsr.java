import java.net.URL;
import java.util.Map;

final class bsr
  extends bss
{
  private brk a;
  private brk b;
  private bqu c;
  private URL d;
  private String e;
  private bsi f;
  
  bsr(brk parambrk1, brk parambrk2, bqu parambqu, URL paramURL, bsi parambsi)
  {
    String str = a;
    b = parambrk1;
    a = parambrk2;
    c = parambqu;
    d = paramURL;
    e = a;
    f = parambsi;
  }
  
  public final void a()
  {
    a.a(b);
    bsg localbsg = new bsg(c);
    String str = e;
    brk localbrk = b;
    a.put(str, brga);
    new bsu(localbsg, new bsm(d), true, f).run();
  }
}

/* Location:
 * Qualified Name:     bsr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */