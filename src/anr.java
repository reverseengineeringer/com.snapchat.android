import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.scan.SnapScan;
import com.snapchat.android.scan.SnapScan.ImageFormat;
import com.snapchat.android.scan.SnapScanResult;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

public class anr
{
  public static final String a = anr.class.getSimpleName();
  public final Executor b;
  public int c;
  public double d;
  public final AtomicBoolean e;
  public final AtomicBoolean f;
  public final AtomicBoolean g;
  public final AtomicLong h;
  public long i;
  public int j;
  double k;
  private final SnapScan l;
  private int m;
  private int n;
  private final ans o;
  private final anr.a p;
  
  public anr(int paramInt1, int paramInt2, int paramInt3, ans paramans)
  {
    this(new SnapScan(), auh.SERIAL_BACKGROUND_EXECUTOR, paramInt1, paramInt2, paramInt3, paramans);
  }
  
  private anr(SnapScan paramSnapScan, Executor paramExecutor, int paramInt1, int paramInt2, int paramInt3, ans paramans)
  {
    l = paramSnapScan;
    b = paramExecutor;
    c = paramInt1;
    m = paramInt2;
    n = paramInt3;
    o = paramans;
    p = null;
    d = 5.0D;
    e = new AtomicBoolean(false);
    f = new AtomicBoolean(false);
    g = new AtomicBoolean(false);
    h = new AtomicLong(0L);
  }
  
  public static double a(long paramLong)
  {
    return (System.nanoTime() - paramLong) / 1.0E9D;
  }
  
  public final void a()
  {
    e.set(false);
    f.set(false);
    Timber.c(a, "Disable Scanner...", new Object[0]);
  }
  
  public static abstract interface a {}
}

/* Location:
 * Qualified Name:     anr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */