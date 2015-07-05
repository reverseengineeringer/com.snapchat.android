import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewStub;
import com.snapchat.android.discover.ui.DSnapView;

public final class aef
{
  public final int a;
  public final int b;
  public View c;
  public View d;
  public View e;
  private final ViewStub f;
  private final int g;
  private aqd h;
  
  public aef(Context paramContext, DSnapView paramDSnapView)
  {
    this((ViewStub)paramDSnapView.findViewById(2131362312), avh.a(paramContext), avh.b(paramContext), paramContext.getResources().getColor(2131230721));
  }
  
  private aef(ViewStub paramViewStub, int paramInt1, int paramInt2, int paramInt3)
  {
    f = paramViewStub;
    a = paramInt1;
    b = paramInt2;
    g = paramInt3;
  }
  
  public final void a()
  {
    if (d != null) {
      return;
    }
    d = f.inflate();
    c = d.findViewById(2131362272);
    e = d.findViewById(2131362271);
    h = new aqd(g);
    avh.a(e, h);
  }
  
  public final void b()
  {
    if (d == null) {
      return;
    }
    d.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     aef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */