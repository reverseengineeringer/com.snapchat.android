import android.os.AsyncTask;
import com.snapchat.android.scan.SnapScan;
import com.snapchat.android.scan.SnapScan.ImageFormat;
import com.snapchat.android.scan.SnapScanResult;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

public class aoo
{
  private static final String k = aoo.class.getSimpleName();
  public final Executor a;
  public int b;
  public double c;
  public final AtomicBoolean d;
  public final AtomicBoolean e;
  public final AtomicBoolean f;
  public final AtomicLong g;
  public long h;
  public int i;
  double j;
  private final SnapScan l;
  private int m;
  private int n;
  private final aop o;
  private final aoo.a p;
  
  public aoo(int paramInt1, int paramInt2, int paramInt3, aop paramaop)
  {
    this(new SnapScan(), avf.SERIAL_BACKGROUND_EXECUTOR, paramInt1, paramInt2, paramInt3, paramaop);
  }
  
  private aoo(SnapScan paramSnapScan, Executor paramExecutor, int paramInt1, int paramInt2, int paramInt3, aop paramaop)
  {
    l = paramSnapScan;
    a = paramExecutor;
    b = paramInt1;
    m = paramInt2;
    n = paramInt3;
    o = paramaop;
    p = null;
    c = 5.0D;
    d = new AtomicBoolean(false);
    e = new AtomicBoolean(false);
    f = new AtomicBoolean(false);
    g = new AtomicLong(0L);
  }
  
  public static double a(long paramLong)
  {
    return (System.nanoTime() - paramLong) / 1.0E9D;
  }
  
  public final void a()
  {
    d.set(false);
    e.set(false);
  }
  
  public static abstract interface a {}
}

/* Location:
 * Qualified Name:     aoo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */