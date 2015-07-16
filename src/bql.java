import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

public final class bql
{
  public final HandlerThread a;
  final bpn b;
  final Handler c;
  long d;
  long e;
  long f;
  long g;
  long h;
  long i;
  long j;
  long k;
  int l;
  int m;
  int n;
  
  bql(bpn parambpn)
  {
    b = parambpn;
    a = new HandlerThread("Picasso-Stats", 10);
    a.start();
    bqp.a(a.getLooper());
    c = new bql.a(a.getLooper(), this);
  }
  
  final void a()
  {
    c.sendEmptyMessage(0);
  }
  
  final void a(Bitmap paramBitmap, int paramInt)
  {
    int i1 = bqp.a(paramBitmap);
    c.sendMessage(c.obtainMessage(paramInt, i1, 0));
  }
  
  static final class a
    extends Handler
  {
    private final bql a;
    
    public a(Looper paramLooper, bql parambql)
    {
      super();
      a = parambql;
    }
    
    public final void handleMessage(final Message paramMessage)
    {
      long l;
      switch (what)
      {
      default: 
        bqe.a.post(new Runnable()
        {
          public final void run()
          {
            throw new AssertionError("Unhandled stats message." + paramMessagewhat);
          }
        });
        return;
      case 0: 
        paramMessage = a;
        d += 1L;
        return;
      case 1: 
        paramMessage = a;
        e += 1L;
        return;
      case 2: 
        localbql = a;
        l = arg1;
        m += 1;
        g = (l + g);
        i = m;
        j = (g / i);
        return;
      case 3: 
        localbql = a;
        l = arg1;
        n += 1;
        h = (l + h);
        i = m;
        k = (h / i);
        return;
      }
      bql localbql = a;
      paramMessage = (Long)obj;
      l += 1;
      f += paramMessage.longValue();
      int i = l;
      i = (f / i);
    }
  }
}

/* Location:
 * Qualified Name:     bql
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */