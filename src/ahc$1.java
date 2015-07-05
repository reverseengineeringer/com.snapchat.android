import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryGroup.ActionState;

final class ahc$1
  implements Runnable
{
  ahc$1(ahc paramahc, StoryGroup paramStoryGroup) {}
  
  public final void run()
  {
    if (a.mActionState == StoryGroup.ActionState.SAVED) {
      a.a(StoryGroup.ActionState.READY);
    }
  }
}

/* Location:
 * Qualified Name:     ahc.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */