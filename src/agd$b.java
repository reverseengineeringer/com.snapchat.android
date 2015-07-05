import android.animation.Animator;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.EmojiTextView;
import com.snapchat.android.ui.FeedReplayAnimationView;

public final class agd$b
{
  public TextView a;
  public TextView b;
  public ChatConversation c;
  public Animator d;
  public boolean e;
  public EmojiTextView f;
  FrameLayout g;
  ImageView h;
  FeedReplayAnimationView i;
  ProgressBar j;
  TextView k;
  View l;
  
  public final void a()
  {
    a.setGravity(80);
    a.setTranslationY(0.0F);
    b.setAlpha(1.0F);
    b.setVisibility(0);
  }
  
  public final void b()
  {
    a.setGravity(16);
    a.setTranslationY(0.0F);
    b.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     agd.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */