import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.ui.DSnapView;
import java.util.List;

public final class adw
  extends adz
{
  private final LayoutInflater d;
  private ImageView e;
  private avp f;
  
  public adw(Context paramContext, ady paramady)
  {
    this((LayoutInflater)paramContext.getSystemService("layout_inflater"), paramady, new avp(paramContext));
  }
  
  private adw(LayoutInflater paramLayoutInflater, ady paramady, avp paramavp)
  {
    super(paramady);
    d = paramLayoutInflater;
    f = paramavp;
  }
  
  public final aim a(View paramView, adb paramadb, @cgb List<View> paramList)
  {
    paramList.add(e);
    return c.a(paramView, paramadb, paramList);
  }
  
  public final boolean a(DSnapView paramDSnapView, DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    super.a(paramDSnapView, paramDSnapPage, paramDSnapPanel);
    a = d.inflate(2130968662, null);
    b = ((FrameLayout)a.findViewById(2131362293));
    e = ((ImageView)a.findViewById(2131362297));
    int i;
    switch (adw.1.a[d.ordinal()])
    {
    default: 
      i = 10;
    }
    for (;;)
    {
      paramDSnapView = (RelativeLayout.LayoutParams)e.getLayoutParams();
      paramDSnapView.addRule(i);
      e.setLayoutParams(paramDSnapView);
      paramDSnapView = c + c;
      paramDSnapPage = new avx.a();
      mImageView = e;
      paramDSnapView = paramDSnapPage.a(paramDSnapView);
      mRequireExactDimensions = true;
      paramDSnapView = paramDSnapView.a();
      f.a(paramDSnapView, new avy[0]);
      return true;
      i = 12;
      continue;
      i = 15;
    }
  }
  
  public final void c()
  {
    super.c();
    f.a(e);
  }
}

/* Location:
 * Qualified Name:     adw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */