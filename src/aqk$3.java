import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;

final class aqk$3
  implements Animator.AnimatorListener
{
  boolean a;
  
  aqk$3(aqk paramaqk, agd.b paramb, ChatConversation paramChatConversation) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    a = true;
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (!a)
    {
      b.a();
      paramAnimator = aqk.a(d, b, c);
      b.d = paramAnimator;
      paramAnimator.start();
    }
    while (!b.e) {
      return;
    }
    b.b();
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    b.a.setGravity(16);
  }
}

/* Location:
 * Qualified Name:     aqk.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */