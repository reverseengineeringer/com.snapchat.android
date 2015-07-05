import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.EmojiTextView;
import com.snapchat.android.ui.FeedReplayAnimationView;
import javax.inject.Provider;

public final class uw
  extends ux<ChatConversation>
{
  public View k;
  public ChatConversation l;
  private TextView n;
  private TextView o;
  private EmojiTextView p;
  private ImageView q;
  private FeedReplayAnimationView r;
  private ProgressBar s;
  private TextView t;
  private final yn u;
  private final Provider<ajv> v;
  
  public uw(View paramView)
  {
    super(paramView);
    k = paramView.findViewById(2131362346);
    n = ((TextView)paramView.findViewById(2131362199));
    o = ((TextView)paramView.findViewById(2131362350));
    p = ((EmojiTextView)paramView.findViewById(2131361860));
    q = ((ImageView)paramView.findViewById(2131362345));
    r = ((FeedReplayAnimationView)paramView.findViewById(2131362347));
    s = ((ProgressBar)paramView.findViewById(2131362348));
    t = ((TextView)paramView.findViewById(2131362351));
    u = yn.a();
    v = ajv.UNSAFE_USER_PROVIDER;
  }
  
  public final void a(ve paramve)
  {
    paramve.a(this);
  }
  
  public final void a(ve paramve, boolean paramBoolean)
  {
    paramve.a(this, paramBoolean);
  }
  
  public final boolean a(ve paramve, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return paramve.a(this, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public final float b(ve paramve)
  {
    return paramve.b(this);
  }
  
  public final boolean c(ve paramve)
  {
    return paramve.c(this);
  }
  
  public final int d(ve paramve)
  {
    return paramve.d(this);
  }
  
  public final void e(ve paramve)
  {
    paramve.e(this);
  }
  
  public final void f(ve paramve)
  {
    paramve.i();
  }
  
  public final void g(ve paramve)
  {
    paramve.f(this);
  }
}

/* Location:
 * Qualified Name:     uw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */