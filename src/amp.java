import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.snapchat.android.networkmanager.DownloadPriority;

public final class amp
{
  private final Handler a;
  private final alw b;
  
  public amp()
  {
    this(alw.a(), new Handler(Looper.getMainLooper()));
  }
  
  private amp(alw paramalw, Handler paramHandler)
  {
    b = paramalw;
    a = paramHandler;
  }
  
  public final void a(aka paramaka, String paramString1, Object paramObject, axn paramaxn, String paramString2, DownloadPriority paramDownloadPriority1, DownloadPriority paramDownloadPriority2, final amp.a parama)
  {
    TextUtils.isEmpty(paramString1);
    paramaka.M();
    String str = String.format("%s-%s-%s", new Object[] { paramaka.getClass().getSimpleName(), paramaka.j(), paramaka.d() });
    aly.a locala = new aly.a();
    a = paramDownloadPriority1;
    b = paramDownloadPriority2;
    d = paramString1;
    e = (paramString1 + paramaka.d());
    h = new String[] { paramString2, paramaka.j() };
    g = str;
    i = paramObject;
    paramString1 = locala.a(paramaka.aa(), paramaka.i(), 1).a();
    if ((paramaka instanceof akl))
    {
      b.a(paramString1, new amn(paramaxn, paramaka.i())
      {
        public final void a(us paramAnonymousus, Exception paramAnonymousException)
        {
          amp.a(amp.this, parama, paramAnonymousus, paramAnonymousException);
        }
      });
      return;
    }
    b.a(paramString1, new amo(paramaka, paramaxn, paramaka.i())
    {
      public final void a(us paramAnonymousus, Exception paramAnonymousException)
      {
        amp.a(amp.this, parama, paramAnonymousus, paramAnonymousException);
      }
    });
  }
  
  public static abstract interface a
  {
    public abstract void a(amp.b paramb);
  }
  
  public static final class b
  {
    public final us a;
    public final Exception b;
    
    public b(us paramus, Exception paramException)
    {
      a = paramus;
      b = paramException;
    }
    
    public final boolean a()
    {
      return (b == null) && (a.d());
    }
  }
}

/* Location:
 * Qualified Name:     amp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */