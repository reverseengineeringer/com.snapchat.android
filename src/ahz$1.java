import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryGroup.ActionState;

final class ahz$1
  implements Runnable
{
  ahz$1(ahz paramahz, StoryGroup paramStoryGroup) {}
  
  public final void run()
  {
    if (a.mActionState == StoryGroup.ActionState.SAVED) {
      a.a(StoryGroup.ActionState.READY);
    }
  }
}

/* Location:
 * Qualified Name:     ahz.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */