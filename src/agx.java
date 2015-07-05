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
import com.snapchat.android.Timber;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapLogbook.ActionState;
import com.snapchat.android.model.StorySnapLogbook.a;

public final class agx
  extends ahc
  implements StorySnapLogbook.a
{
  protected final ImageView k;
  public final bgr<ImageView> l;
  public final bgr<TextView> m;
  public final bgr<ImageView> n;
  public final bgr<TextView> o;
  protected final bgr<LinearLayout> p;
  public final bgr<Button> q;
  protected final bgr<Space> r;
  protected final bgr<LinearLayout> s;
  public final bgr<Button> t;
  protected final bgr<ProgressBar> u;
  public StorySnapLogbook v;
  
  public agx(View paramView)
  {
    super(paramView);
    k = ((ImageView)paramView.findViewById(2131362456));
    l = new bgr(paramView, 2131362460, 2131362790);
    m = new bgr(paramView, 2131362460, 2131362789);
    n = new bgr(paramView, 2131362460, 2131362792);
    o = new bgr(paramView, 2131362460, 2131362791);
    p = new bgr(paramView, 2131362461, 2131362785);
    q = new bgr(paramView, 2131362461, 2131362786);
    r = new bgr(paramView, 2131362461, 2131362784);
    s = new bgr(paramView, 2131362461, 2131362782);
    t = new bgr(paramView, 2131362461, 2131362783);
    u = new bgr(paramView, 2131362462, 2131362779);
  }
  
  private void c(int paramInt)
  {
    p.a(paramInt);
    s.a(paramInt);
    r.a(paramInt);
  }
  
  protected final void a(@cgb final ahb paramahb, int paramInt)
  {
    paramahb = (StorySnapLogbook)paramahb;
    a(paramahb);
    Object localObject = B.getText();
    Context localContext = SnapchatApplication.b().getApplicationContext();
    switch (agx.2.a[mActionState.ordinal()])
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
        avh.a(s.a(), t.a(), ((Resources)localObject).getDimensionPixelSize(2131296423));
      }
      if (p.b())
      {
        avh.a(p.a(), q.a(), ((Resources)localObject).getDimensionPixelSize(2131296423));
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
            if (paramahbmActionState == StorySnapLogbook.ActionState.SAVED) {
              paramahb.a(StorySnapLogbook.ActionState.READY);
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
  
  public final void a(@cgb StorySnapLogbook paramStorySnapLogbook)
  {
    paramStorySnapLogbook = mStorySnap;
    Context localContext = SnapchatApplication.b().getApplicationContext();
    if (paramStorySnapLogbook.aF())
    {
      B.setText(2131493319);
      return;
    }
    if (mFailed)
    {
      paramStorySnapLogbook = N.getString(2131493511, new Object[] { paramStorySnapLogbook.b(localContext) });
      B.setText(paramStorySnapLogbook);
      return;
    }
    B.setText(paramStorySnapLogbook.b(localContext));
  }
  
  public final void b(@cgb StorySnapLogbook paramStorySnapLogbook)
  {
    if (v != paramStorySnapLogbook)
    {
      Timber.e("MyStorySnapStoriesListItemViewHolder", "View received changed notification from different model.", new Object[0]);
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
 * Qualified Name:     agx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */