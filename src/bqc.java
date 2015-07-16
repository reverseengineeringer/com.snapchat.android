import android.graphics.Bitmap;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
import java.io.InputStream;

final class bqc
  extends bqj
{
  private final bpt a;
  private final bql b;
  
  public bqc(bpt parambpt, bql parambql)
  {
    a = parambpt;
    b = parambql;
  }
  
  final int a()
  {
    return 2;
  }
  
  final boolean a(NetworkInfo paramNetworkInfo)
  {
    return (paramNetworkInfo == null) || (paramNetworkInfo.isConnected());
  }
  
  public final boolean a(bqh parambqh)
  {
    parambqh = d.getScheme();
    return ("http".equals(parambqh)) || ("https".equals(parambqh));
  }
  
  public final bqj.a b(bqh parambqh)
  {
    bpt.a locala = a.a(d, c);
    if (c) {}
    for (parambqh = bqe.d.b;; parambqh = bqe.d.c)
    {
      localObject = b;
      if (localObject == null) {
        break;
      }
      return new bqj.a((Bitmap)localObject, parambqh);
    }
    Object localObject = a;
    if (localObject == null) {
      return null;
    }
    if ((parambqh == bqe.d.b) && (d == 0L))
    {
      bqp.a((InputStream)localObject);
      throw new bqc.a("Received response with 0 content-length header.");
    }
    if ((parambqh == bqe.d.c) && (d > 0L))
    {
      bql localbql = b;
      long l = d;
      c.sendMessage(c.obtainMessage(4, Long.valueOf(l)));
    }
    return new bqj.a((InputStream)localObject, parambqh);
  }
  
  final boolean b()
  {
    return true;
  }
  
  static final class a
    extends IOException
  {
    public a(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     bqc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */