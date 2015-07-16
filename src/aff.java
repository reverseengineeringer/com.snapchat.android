import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewStub;
import com.snapchat.android.discover.ui.DSnapView;

public final class aff
{
  public final int a;
  public final int b;
  public View c;
  public View d;
  public View e;
  private final ViewStub f;
  private final int g;
  private arc h;
  
  public aff(Context paramContext, DSnapView paramDSnapView)
  {
    this((ViewStub)paramDSnapView.findViewById(2131362310), awf.a(paramContext), awf.b(paramContext), paramContext.getResources().getColor(2131230721));
  }
  
  private aff(ViewStub paramViewStub, int paramInt1, int paramInt2, int paramInt3)
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
    c = d.findViewById(2131362270);
    e = d.findViewById(2131362269);
    h = new arc(g);
    awf.a(e, h);
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
 * Qualified Name:     aff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */