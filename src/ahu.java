import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapLogbook.ActionState;
import com.snapchat.android.model.StorySnapLogbook.a;

public final class ahu
  extends ahz
  implements StorySnapLogbook.a
{
  protected final ImageView k;
  public final bhr<ImageView> l;
  public final bhr<TextView> m;
  public final bhr<ImageView> n;
  public final bhr<TextView> o;
  protected final bhr<LinearLayout> p;
  public final bhr<Button> q;
  protected final bhr<Space> r;
  protected final bhr<LinearLayout> s;
  public final bhr<Button> t;
  protected final bhr<ProgressBar> u;
  public StorySnapLogbook v;
  
  public ahu(View paramView)
  {
    super(paramView);
    k = ((ImageView)paramView.findViewById(2131362457));
    l = new bhr(paramView, 2131362461, 2131362783);
    m = new bhr(paramView, 2131362461, 2131362782);
    n = new bhr(paramView, 2131362461, 2131362785);
    o = new bhr(paramView, 2131362461, 2131362784);
    p = new bhr(paramView, 2131362462, 2131362778);
    q = new bhr(paramView, 2131362462, 2131362779);
    r = new bhr(paramView, 2131362462, 2131362777);
    s = new bhr(paramView, 2131362462, 2131362775);
    t = new bhr(paramView, 2131362462, 2131362776);
    u = new bhr(paramView, 2131362463, 2131362772);
  }
  
  private void c(int paramInt)
  {
    p.a(paramInt);
    s.a(paramInt);
    r.a(paramInt);
  }
  
  protected final void a(@chc final ahy paramahy, int paramInt)
  {
    paramahy = (StorySnapLogbook)paramahy;
    a(paramahy);
    Object localObject = B.getText();
    Context localContext = SnapchatApplication.b().getApplicationContext();
    switch (ahu.2.a[mActionState.ordinal()])
    {
    }
    while ((q.b()) && (mIsDeletingAllowed))
    {
      ((Button)q.a()).setEnabled(true);
      ((Button)q.a()).setAlpha(1.0F);
      return;
      localObject = localContext.getResources();
      u.a(8);
      c(paramInt);
      if (s.b()) {
        awf.a(s.a(), t.a(), ((Resources)localObject).getDimensionPixelSize(2131296424));
      }
      if (p.b())
      {
        awf.a(p.a(), q.a(), ((Resources)localObject).getDimensionPixelSize(2131296424));
        continue;
        u.a(0);
        c(8);
        B.setText(localContext.getString(2131493379, new Object[] { localObject }));
        continue;
        u.a(8);
        c(8);
        B.setText(localContext.getString(2131493378, new Object[] { localObject }));
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            if (paramahymActionState == StorySnapLogbook.ActionState.SAVED) {
              paramahy.a(StorySnapLogbook.ActionState.READY);
            }
          }
        }, 2000L);
        continue;
        u.a(0);
        c(8);
        B.setText(localContext.getString(2131493111, new Object[] { localObject }));
        continue;
        u.a(8);
        c(8);
      }
    }
    ((Button)q.a()).setEnabled(false);
    ((Button)q.a()).setAlpha(0.2F);
  }
  
  public final void a(@chc StorySnapLogbook paramStorySnapLogbook)
  {
    paramStorySnapLogbook = mStorySnap;
    Context localContext = SnapchatApplication.b().getApplicationContext();
    if (paramStorySnapLogbook.aA())
    {
      B.setText(2131493319);
      return;
    }
    if (mFailed)
    {
      paramStorySnapLogbook = M.getString(2131493511, new Object[] { paramStorySnapLogbook.b(localContext) });
      B.setText(paramStorySnapLogbook);
      return;
    }
    B.setText(paramStorySnapLogbook.b(localContext));
  }
  
  public final void b(@chc StorySnapLogbook paramStorySnapLogbook)
  {
    if (v != paramStorySnapLogbook) {
      return;
    }
    s();
  }
  
  public final void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      x.setAlpha(0.6F);
      k.setVisibility(0);
      return;
    }
    x.setAlpha(1.0F);
    k.setVisibility(8);
  }
  
  public final void q()
  {
    super.q();
    n.a(8);
    o.a(8);
    l.a(8);
    m.a(8);
    s.a(8);
    r.a(8);
    p.a(8);
    u.a(8);
    k.setVisibility(8);
  }
  
  public final boolean r()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     ahu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */