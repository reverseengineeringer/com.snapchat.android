import com.squareup.otto.Bus;
import java.util.Map;
import javax.inject.Provider;

public final class zs
  implements zu
{
  private final Provider<akp> a;
  private final Bus b;
  private final zs.a c;
  private final aph d;
  private final og e;
  
  public zs()
  {
    this(bbo.a(), akp.UNSAFE_USER_PROVIDER, new zs.a(), aph.a(), og.a());
  }
  
  private zs(Bus paramBus, Provider<akp> paramProvider, zs.a parama, aph paramaph, og paramog)
  {
    b = paramBus;
    a = paramProvider;
    c = parama;
    d = paramaph;
    e = paramog;
  }
  
  private void d(aka paramaka)
  {
    akp localakp = (akp)a.get();
    if (localakp != null)
    {
      if (!(paramaka instanceof akl)) {
        break label95;
      }
      akl localakl = (akl)paramaka;
      boolean bool = mWas404ResponseReceived;
      avy.a(localakp, localakl, true);
      b.a(new bex());
      if (!(paramaka instanceof akl)) {
        break label145;
      }
      if (!mStoryViewRecordsSinceLastServerChange.isEmpty()) {
        new px().executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      }
    }
    return;
    label95:
    if ((!paramaka.u()) && (localakp.t())) {
      paramaka.z_();
    }
    for (;;)
    {
      og.d(paramaka);
      b.a(new bcl(mSender));
      break;
      paramaka.o();
    }
    label145:
    d.d();
  }
  
  public final void a(aka paramaka)
  {
    paramaka.d();
    d(paramaka);
  }
  
  public final void a(aka paramaka, long paramLong) {}
  
  public final void b(aka paramaka)
  {
    paramaka.d();
    d(paramaka);
  }
  
  public final void c(aka paramaka) {}
  
  public static final class a {}
}

/* Location:
 * Qualified Name:     zs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */