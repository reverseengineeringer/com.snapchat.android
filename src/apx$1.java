import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryGroup.ActionState;
import com.snapchat.android.util.AlertDialogUtils.YesNoOption;
import com.snapchat.android.util.AlertDialogUtils.a;

public final class apx$1
  implements AlertDialogUtils.a
{
  public apx$1(apx paramapx) {}
  
  public final void a(AlertDialogUtils.YesNoOption paramYesNoOption)
  {
    switch (apx.4.a[paramYesNoOption.ordinal()])
    {
    default: 
      throw new IllegalStateException("Illegal dialog option");
    case 1: 
      ajx.aI();
      a.a();
      return;
    case 2: 
      a.a();
      return;
    }
    a.b.a(StoryGroup.ActionState.READY);
  }
}

/* Location:
 * Qualified Name:     apx.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */