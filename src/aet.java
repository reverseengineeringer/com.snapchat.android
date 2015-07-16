import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPage.Form;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.ui.DSnapView;

public final class aet
  extends aez
{
  private final Context d;
  private aen e;
  
  public aet(Context paramContext, aey paramaey)
  {
    super(paramaey);
    d = paramContext;
  }
  
  public final boolean a(final DSnapView paramDSnapView, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    super.a(paramDSnapView, paramDSnapPage, paramDSnapPanel);
    e = new aen(d);
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
    aen localaen = e;
    if (g != null) {
      b.a(g, true);
    }
    if (c != null) {
      a.a(2130968662, c);
    }
  }
  
  public final void m_()
  {
    super.m_();
    e.a();
  }
  
  public final void n_()
  {
    super.n_();
    e.b();
  }
}

/* Location:
 * Qualified Name:     aet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */