import android.os.Bundle;
import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;

public abstract class amr
{
  final CountDownLatch a = new CountDownLatch(1);
  final alw b;
  volatile boolean c = false;
  String d;
  protected final alw.a e = new alw.a()
  {
    public final void a(aly paramAnonymousaly)
    {
      c = false;
      a.countDown();
    }
    
    public final void a(aly paramAnonymousaly, bgl paramAnonymousbgl, us paramAnonymousus)
    {
      try
      {
        c = a(paramAnonymousbgl);
        return;
      }
      finally
      {
        a.countDown();
      }
    }
  };
  
  protected amr(alw paramalw)
  {
    b = paramalw;
  }
  
  protected abstract boolean a(bgl parambgl);
  
  protected final boolean b(String paramString1, Bundle paramBundle, DownloadPriority paramDownloadPriority1, DownloadPriority paramDownloadPriority2, String paramString2, String paramString3)
  {
    d = UUID.randomUUID().toString();
    aly.a locala = new aly.a();
    a = paramDownloadPriority1;
    b = paramDownloadPriority2;
    d = paramString1;
    e = d;
    h = new String[] { paramString2 };
    g = paramString3;
    f = paramBundle;
    paramString1 = locala.a();
    b.a(paramString1, e);
    try
    {
      a.await();
      return c;
    }
    catch (InterruptedException paramString1)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     amr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */