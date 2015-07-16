import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.EmojiTextView;
import com.snapchat.android.ui.FeedReplayAnimationView;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;

public final class vs
  extends vt<ChatConversation>
{
  public final View k;
  public final TextView l;
  public final TextView m;
  public ChatConversation n;
  public aqg o;
  private final EmojiTextView q;
  private final ImageView r;
  private final FeedReplayAnimationView s;
  private final ProgressBar t;
  private final TextView u;
  private final Provider<akp> v;
  
  public vs(View paramView)
  {
    super(paramView);
    k = paramView.findViewById(2131362344);
    l = ((TextView)paramView.findViewById(2131362199));
    m = ((TextView)paramView.findViewById(2131362348));
    q = ((EmojiTextView)paramView.findViewById(2131361861));
    r = ((ImageView)paramView.findViewById(2131362343));
    s = ((FeedReplayAnimationView)paramView.findViewById(2131362345));
    t = ((ProgressBar)paramView.findViewById(2131362346));
    u = ((TextView)paramView.findViewById(2131362349));
    v = akp.UNSAFE_USER_PROVIDER;
  }
  
  private void a(List<ChatFeedItem> paramList)
  {
    Context localContext = m.getContext();
    boolean bool;
    long l1;
    if (!paramList.isEmpty())
    {
      bool = ((ChatFeedItem)paramList.get(0)).P();
      if (paramList.size() == 1)
      {
        l1 = ((ChatFeedItem)paramList.get(0)).c(n);
        paramList = ((ChatFeedItem)paramList.get(0)).a();
      }
    }
    for (;;)
    {
      String str;
      if (l1 > 0L)
      {
        str = atz.b(localContext, l1);
        label94:
        if (TextUtils.isEmpty(str)) {
          if (paramList != null)
          {
            label106:
            m.setText(paramList);
            if (!bool) {
              break label257;
            }
            m.setTextColor(localContext.getResources().getColor(2131230794));
            label135:
            m.setVisibility(8);
            return;
            paramList = paramList.iterator();
            l1 = 0L;
            label154:
            if (paramList.hasNext())
            {
              long l2 = ((ChatFeedItem)paramList.next()).c(n);
              if (l2 <= l1) {
                break label284;
              }
              l1 = l2;
            }
          }
        }
      }
      label257:
      label284:
      for (;;)
      {
        break label154;
        paramList = m.getContext().getResources().getString(2131493519);
        break;
        paramList = "";
        break label106;
        if (TextUtils.isEmpty(paramList))
        {
          paramList = str;
          break label106;
        }
        paramList = auv.a(null, 2131493169, new Object[] { str, paramList });
        break label106;
        m.setTextColor(localContext.getResources().getColor(2131230721));
        break label135;
        str = "";
        break label94;
      }
      bool = false;
      l1 = 0L;
      paramList = null;
    }
  }
  
  public final void a(vo paramvo)
  {
    if (a != null) {
      a.a(this);
    }
  }
  
  public final void a(wa paramwa)
  {
    paramwa.a(this);
  }
  
  public final void a(wa paramwa, MotionEvent paramMotionEvent)
  {
    paramwa.a(this, paramMotionEvent);
  }
  
  public final void a(wa paramwa, boolean paramBoolean)
  {
    paramwa.a(this, paramBoolean);
  }
  
  public final boolean a(wa paramwa, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return paramwa.a(this, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public final float b(wa paramwa)
  {
    return paramwa.b(this);
  }
  
  public final void b(int paramInt)
  {
    k.setBackgroundColor(paramInt);
  }
  
  public final boolean c(wa paramwa)
  {
    return paramwa.c(this);
  }
  
  public final int d(wa paramwa)
  {
    return paramwa.d(this);
  }
  
  public final void e(wa paramwa)
  {
    paramwa.e(this);
  }
  
  public final void f(wa paramwa)
  {
    paramwa.i();
  }
  
  public final void g(wa paramwa)
  {
    paramwa.f(this);
  }
  
  public final void q()
  {
    l.setTranslationY(0.0F);
    m.setAlpha(1.0F);
    m.setVisibility(0);
  }
  
  public final void r()
  {
    l.setTranslationY(0.0F);
    m.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     vs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */