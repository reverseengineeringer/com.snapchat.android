import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.ArrayList;

final class aqk$6
  implements Animator.AnimatorListener
{
  boolean a;
  
  aqk$6(aqk paramaqk, AnimatorSet paramAnimatorSet, agd.b paramb, ChatConversation paramChatConversation) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    a = true;
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (!a) {
      if (b.getChildAnimations().isEmpty()) {
        if (aqk.d(e).a())
        {
          c.b.setAlpha(1.0F);
          c.b.setText(d.mTheirUsername);
        }
      }
    }
    while (!c.e)
    {
      return;
      c.b();
      return;
      c.d = b;
      b.start();
      return;
    }
    c.b();
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     aqk.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */