import android.app.Application;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Provider;

public final class my
  implements bvk<SnapchatApplication>
{
  private final bvk<Application> b;
  private final Provider<aze> c;
  private final Provider<ReleaseManager> d;
  private final Provider<baw> e;
  private final Provider<na> f;
  private final Provider<aej> g;
  private final Provider<acy> h;
  private final Provider<pm> i;
  private final Provider<xv> j;
  private final Provider<bam> k;
  private final Provider<aph> l;
  private final Provider<afg> m;
  
  static
  {
    if (!my.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private my(bvk<Application> parambvk, Provider<aze> paramProvider, Provider<ReleaseManager> paramProvider1, Provider<baw> paramProvider2, Provider<na> paramProvider3, Provider<aej> paramProvider4, Provider<acy> paramProvider5, Provider<pm> paramProvider6, Provider<xv> paramProvider7, Provider<bam> paramProvider8, Provider<aph> paramProvider9, Provider<afg> paramProvider10)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
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
  
  public static bvk<SnapchatApplication> a(bvk<Application> parambvk, Provider<aze> paramProvider, Provider<ReleaseManager> paramProvider1, Provider<baw> paramProvider2, Provider<na> paramProvider3, Provider<aej> paramProvider4, Provider<acy> paramProvider5, Provider<pm> paramProvider6, Provider<xv> paramProvider7, Provider<bam> paramProvider8, Provider<aph> paramProvider9, Provider<afg> paramProvider10)
  {
    return new my(parambvk, paramProvider, paramProvider1, paramProvider2, paramProvider3, paramProvider4, paramProvider5, paramProvider6, paramProvider7, paramProvider8, paramProvider9, paramProvider10);
  }
}

/* Location:
 * Qualified Name:     my
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */