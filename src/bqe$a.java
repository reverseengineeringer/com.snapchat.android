import android.content.Context;
import android.graphics.Bitmap.Config;
import java.util.List;
import java.util.concurrent.ExecutorService;

public final class bqe$a
{
  public ExecutorService a;
  public bpn b;
  public bqe.f c;
  public List<bqj> d;
  private final Context e;
  private bpt f;
  private bqe.c g;
  private Bitmap.Config h;
  private boolean i;
  private boolean j;
  
  public bqe$a(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context must not be null.");
    }
    e = paramContext.getApplicationContext();
  }
  
  public final bqe a()
  {
    Context localContext = e;
    if (f == null) {
      f = bqp.a(localContext);
    }
    if (b == null) {
      b = new bpx(localContext);
    }
    if (a == null) {
      a = new bqg();
    }
    if (c == null) {
      c = bqe.f.a;
    }
    bql localbql = new bql(b);
    return new bqe(localContext, new bps(localContext, a, bqe.a, f, b, localbql), b, g, c, d, localbql, h, i, j);
  }
}

/* Location:
 * Qualified Name:     bqe.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */