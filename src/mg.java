import android.app.Application;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Provider;

public final class mg
  implements buj<SnapchatApplication>
{
  private final buj<Application> b;
  private final Provider<ayg> c;
  private final Provider<ReleaseManager> d;
  private final Provider<azx> e;
  private final Provider<mj> f;
  private final Provider<adj> g;
  private final Provider<aby> h;
  private final Provider<ov> i;
  private final Provider<ws> j;
  private final Provider<azn> k;
  private final Provider<aol> l;
  private final Provider<aeg> m;
  
  static
  {
    if (!mg.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private mg(buj<Application> parambuj, Provider<ayg> paramProvider, Provider<ReleaseManager> paramProvider1, Provider<azx> paramProvider2, Provider<mj> paramProvider3, Provider<adj> paramProvider4, Provider<aby> paramProvider5, Provider<ov> paramProvider6, Provider<ws> paramProvider7, Provider<azn> paramProvider8, Provider<aol> paramProvider9, Provider<aeg> paramProvider10)
  {
    if ((!a) && (parambuj == null)) {
      throw new AssertionError();
    }
    b = parambuj;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
    if ((!a) && (paramProvider1 == null)) {
      throw new AssertionError();
    }
    d = paramProvider1;
    if ((!a) && (paramProvider2 == null)) {
      throw new AssertionError();
    }
    e = paramProvider2;
    if ((!a) && (paramProvider3 == null)) {
      throw new AssertionError();
    }
    f = paramProvider3;
    if ((!a) && (paramProvider4 == null)) {
      throw new AssertionError();
    }
    g = paramProvider4;
    if ((!a) && (paramProvider5 == null)) {
      throw new AssertionError();
    }
    h = paramProvider5;
    if ((!a) && (paramProvider6 == null)) {
      throw new AssertionError();
    }
    i = paramProvider6;
    if ((!a) && (paramProvider7 == null)) {
      throw new AssertionError();
    }
    j = paramProvider7;
    if ((!a) && (paramProvider8 == null)) {
      throw new AssertionError();
    }
    k = paramProvider8;
    if ((!a) && (paramProvider9 == null)) {
      throw new AssertionError();
    }
    l = paramProvider9;
    if ((!a) && (paramProvider10 == null)) {
      throw new AssertionError();
    }
    m = paramProvider10;
  }
  
  public static buj<SnapchatApplication> a(buj<Application> parambuj, Provider<ayg> paramProvider, Provider<ReleaseManager> paramProvider1, Provider<azx> paramProvider2, Provider<mj> paramProvider3, Provider<adj> paramProvider4, Provider<aby> paramProvider5, Provider<ov> paramProvider6, Provider<ws> paramProvider7, Provider<azn> paramProvider8, Provider<aol> paramProvider9, Provider<aeg> paramProvider10)
  {
    return new mg(parambuj, paramProvider, paramProvider1, paramProvider2, paramProvider3, paramProvider4, paramProvider5, paramProvider6, paramProvider7, paramProvider8, paramProvider9, paramProvider10);
  }
}

/* Location:
 * Qualified Name:     mg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */