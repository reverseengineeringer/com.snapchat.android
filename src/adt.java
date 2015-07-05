import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPage.Form;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.ui.DSnapView;

public final class adt
  extends adz
{
  private final Context d;
  private adn e;
  
  public adt(Context paramContext, ady paramady)
  {
    super(paramady);
    d = paramContext;
  }
  
  public final boolean a(final DSnapView paramDSnapView, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    super.a(paramDSnapView, paramDSnapPage, paramDSnapPanel);
    e = new adn(d);
    a = e.c;
    b = e.d;
    e.a(paramDSnapView.getPublisherPrimaryColor(), paramDSnapView.getPublisherSecondaryColor());
    e.a(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramDSnapView.a(DSnapPage.Form.LONGFORM.getIndex(), true);
      }
    });
    return true;
  }
  
  public final void c()
  {
    super.c();
    adn localadn = e;
    if (g != null) {
      b.a(g, true);
    }
    if (c != null) {
      a.a(2130968661, c);
    }
  }
  
  public final void o_()
  {
    super.o_();
    e.a();
  }
  
  public final void p_()
  {
    super.p_();
    e.b();
  }
}

/* Location:
 * Qualified Name:     adt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */