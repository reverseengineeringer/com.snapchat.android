import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

public final class adm
{
  final aej a;
  final aed b;
  final auz<DSnapPage> c;
  protected final aej.b d = new aej.b()
  {
    public final void a(@chc List<DSnapPage> paramAnonymousList)
    {
      paramAnonymousList = paramAnonymousList.iterator();
      boolean bool = false;
      if (paramAnonymousList.hasNext())
      {
        DSnapPage localDSnapPage = (DSnapPage)paramAnonymousList.next();
        if (!c.a(localDSnapPage)) {
          break label79;
        }
        bool = b.b(localDSnapPage, MediaState.RESOLVE_NEEDED) | bool;
      }
      label79:
      for (;;)
      {
        break;
        if (bool) {
          a.c();
        }
        return;
      }
    }
  };
  private final String e = "ResetAdsOperation";
  
  public adm(@chc auz<DSnapPage> paramauz)
  {
    this(paramauz, aej.a(), aed.a());
  }
  
  private adm(@chc auz<DSnapPage> paramauz, @chc aej paramaej, @chc aed paramaed)
  {
    a = paramaej;
    b = paramaed;
    c = paramauz;
  }
  
  public final void a()
  {
    c.getClass().getSimpleName();
    a.a(new aej.b[] { d });
  }
}

/* Location:
 * Qualified Name:     adm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */