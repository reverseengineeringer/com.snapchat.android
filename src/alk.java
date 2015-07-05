import android.net.NetworkInfo;
import com.snapchat.android.Timber;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Provider;

public final class alk
{
  public static final Provider<alk> a = new Provider() {};
  public final ExecutorService b;
  private final ale c;
  private final pk d;
  
  public alk()
  {
    this(new pk(), Executors.newSingleThreadExecutor(all.a()), ale.a());
  }
  
  private alk(pk parampk, ExecutorService paramExecutorService, ale paramale)
  {
    c = paramale;
    d = parampk;
    b = paramExecutorService;
  }
  
  @avl
  protected final uc a(alc paramalc, bfl parambfl)
  {
    Object localObject1 = c.b();
    String str;
    if (localObject1 != null)
    {
      str = ((NetworkInfo)localObject1).getTypeName();
      if ((localObject1 != null) && (((NetworkInfo)localObject1).getType() != 1)) {
        break label84;
      }
    }
    label84:
    for (int i = 1;; i = 0)
    {
      if (ajx.m()) {
        break label89;
      }
      parambfl = new IllegalStateException("Attempting to download media when user is logged out");
      paramalc = new uc.a(d, str);
      mCaughtException = parambfl;
      return paramalc.a();
      str = "Unknown";
      break;
    }
    label89:
    if ((i == 0) && (a))
    {
      parambfl = new alf("Operation only allowed on wifi");
      paramalc = new uc.a(d, str);
      mCaughtException = parambfl;
      return paramalc.a();
    }
    Object localObject2;
    if (i != null)
    {
      i = 1;
      if (i == 0) {
        break label199;
      }
      localObject1 = d;
      localObject2 = i;
      if (localObject2 != null) {
        break label183;
      }
      parambfl = pk.a((String)localObject1, parambfl);
    }
    for (;;)
    {
      try
      {
        parambfl = parambfl.i();
        return parambfl;
      }
      catch (Exception parambfl)
      {
        label183:
        label199:
        Timber.f("DownloadExecutor", "DOWNLOAD-MANAGER: Exception caught executing download request %s: %s", new Object[] { paramalc, parambfl });
        paramalc = new uc.a(d, str);
        mCaughtException = parambfl;
      }
      i = 0;
      break;
      parambfl = new px((String)localObject1, parambfl, localObject2);
      continue;
      parambfl = pk.a(d, parambfl);
    }
    return paramalc.a();
  }
  
  public static abstract interface a
  {
    public abstract void a(@cgb alk paramalk, @cgb alc paramalc, @cgb bfl parambfl, @cgc uc paramuc, @cgc Object paramObject);
  }
}

/* Location:
 * Qualified Name:     alk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */