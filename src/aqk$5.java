import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;

final class aqk$5
  implements Animator.AnimatorListener
{
  boolean a;
  
  aqk$5(aqk paramaqk, agd.b paramb, ChatConversation paramChatConversation) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    a = true;
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (!a) {
      if (aqk.d(d).a())
      {
        b.b.setAlpha(1.0F);
        b.b.setText(c.mTheirUsername);
      }
    }
    while (!b.e)
    {
      return;
      b.b();
      return;
    }
    b.b();
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     aqk.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */