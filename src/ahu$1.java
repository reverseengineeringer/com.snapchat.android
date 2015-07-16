import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.StorySnapLogbook.ActionState;

final class ahu$1
  implements Runnable
{
  ahu$1(ahu paramahu, StorySnapLogbook paramStorySnapLogbook) {}
  
  public final void run()
  {
    if (a.mActionState == StorySnapLogbook.ActionState.SAVED) {
      a.a(StorySnapLogbook.ActionState.READY);
    }
  }
}

/* Location:
 * Qualified Name:     ahu.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */