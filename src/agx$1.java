import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapLogbook.ActionState;

final class agx$1
  implements Runnable
{
  agx$1(agx paramagx, StorySnapLogbook paramStorySnapLogbook) {}
  
  public final void run()
  {
    if (a.mActionState == StorySnapLogbook.ActionState.SAVED) {
      a.a(StorySnapLogbook.ActionState.READY);
    }
  }
}

/* Location:
 * Qualified Name:     agx.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */