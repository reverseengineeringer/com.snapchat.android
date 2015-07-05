import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;

public abstract class alu
{
  final CountDownLatch a = new CountDownLatch(1);
  final alb b;
  volatile boolean c = false;
  String d;
  protected final alb.a e = new alb.a()
  {
    public final void a(alc paramAnonymousalc)
    {
      c = false;
      a.countDown();
    }
    
    public final void a(alc paramAnonymousalc, bfl paramAnonymousbfl, uc paramAnonymousuc)
    {
      try
      {
        c = a(paramAnonymousbfl);
        return;
      }
      finally
      {
        a.countDown();
      }
    }
  };
  
  protected alu(alb paramalb)
  {
    b = paramalb;
  }
  
  protected abstract boolean a(bfl parambfl);
  
  protected final boolean b(String paramString1, Bundle paramBundle, DownloadPriority paramDownloadPriority1, DownloadPriority paramDownloadPriority2, String paramString2, String paramString3)
  {
    d = UUID.randomUUID().toString();
    alc.a locala = new alc.a();
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
      for (;;)
      {
        Timber.f("MediaDownload", "Interrupt while waiting for latch!", new Object[0]);
      }
    }
  }
}

/* Location:
 * Qualified Name:     alu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */