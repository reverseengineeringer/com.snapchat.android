import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.List;

public final class acm
{
  final adj a;
  final add b;
  final aub<DSnapPage> c;
  protected final adj.b d = new adj.b()
  {
    public final void a(@cgb List<DSnapPage> paramAnonymousList)
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
          a.b();
        }
        return;
      }
    }
  };
  private final String e = "ResetAdsOperation";
  
  public acm(@cgb aub<DSnapPage> paramaub)
  {
    this(paramaub, adj.a(), add.a());
  }
  
  private acm(@cgb aub<DSnapPage> paramaub, @cgb adj paramadj, @cgb add paramadd)
  {
    a = paramadj;
    b = paramadd;
    c = paramaub;
  }
  
  public final void a()
  {
    Timber.c("ResetAdsOperation", "Resetting state of failed ads using %s", new Object[] { c.getClass().getSimpleName() });
    a.a(new adj.b[] { d });
  }
}

/* Location:
 * Qualified Name:     acm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */