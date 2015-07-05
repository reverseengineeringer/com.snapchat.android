import android.content.Context;
import android.graphics.Bitmap.Config;
import java.util.List;
import java.util.concurrent.ExecutorService;

public final class bpd$a
{
  public ExecutorService a;
  public bom b;
  public bpd.f c;
  public List<bpi> d;
  private final Context e;
  private bos f;
  private bpd.c g;
  private Bitmap.Config h;
  private boolean i;
  private boolean j;
  
  public bpd$a(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context must not be null.");
    }
    e = paramContext.getApplicationContext();
  }
  
  public final bpd a()
  {
    Context localContext = e;
    if (f == null) {
      f = bpo.a(localContext);
    }
    if (b == null) {
      b = new bow(localContext);
    }
    if (a == null) {
      a = new bpf();
    }
    if (c == null) {
      c = bpd.f.a;
    }
    bpk localbpk = new bpk(b);
    return new bpd(localContext, new bor(localContext, a, bpd.a, f, b, localbpk), b, g, c, d, localbpk, h, i, j);
  }
}

/* Location:
 * Qualified Name:     bpd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */