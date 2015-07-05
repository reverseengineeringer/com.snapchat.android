import android.graphics.Bitmap;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
import java.io.InputStream;

final class bpb
  extends bpi
{
  private final bos a;
  private final bpk b;
  
  public bpb(bos parambos, bpk parambpk)
  {
    a = parambos;
    b = parambpk;
  }
  
  final int a()
  {
    return 2;
  }
  
  final boolean a(NetworkInfo paramNetworkInfo)
  {
    return (paramNetworkInfo == null) || (paramNetworkInfo.isConnected());
  }
  
  public final boolean a(bpg parambpg)
  {
    parambpg = d.getScheme();
    return ("http".equals(parambpg)) || ("https".equals(parambpg));
  }
  
  public final bpi.a b(bpg parambpg)
  {
    bos.a locala = a.a(d, c);
    if (c) {}
    for (parambpg = bpd.d.b;; parambpg = bpd.d.c)
    {
      localObject = b;
      if (localObject == null) {
        break;
      }
      return new bpi.a((Bitmap)localObject, parambpg);
    }
    Object localObject = a;
    if (localObject == null) {
      return null;
    }
    if ((parambpg == bpd.d.b) && (d == 0L))
    {
      bpo.a((InputStream)localObject);
      throw new bpb.a("Received response with 0 content-length header.");
    }
    if ((parambpg == bpd.d.c) && (d > 0L))
    {
      bpk localbpk = b;
      long l = d;
      c.sendMessage(c.obtainMessage(4, Long.valueOf(l)));
    }
    return new bpi.a((InputStream)localObject, parambpg);
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
 * Qualified Name:     bpb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */