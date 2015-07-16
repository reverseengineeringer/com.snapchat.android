import android.view.View;
import com.snapchat.android.stories.ui.MyStoryView;
import com.snapchat.android.ui.VerticalSwipeLayout.a;

public final class aps$3
  implements VerticalSwipeLayout.a
{
  public aps$3(aps paramaps, MyStoryView paramMyStoryView) {}
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    paramInt2 = 0;
    Object localObject = a;
    if (paramInt3 != 0)
    {
      paramInt1 = 1;
      localObject = b;
      if (paramInt1 == 0) {
        break label39;
      }
    }
    label39:
    for (paramInt1 = paramInt2;; paramInt1 = 8)
    {
      awf.a((View)localObject, paramInt1);
      return;
      paramInt1 = 0;
      break;
    }
  }
  
  public final void c(int paramInt) {}
}

/* Location:
 * Qualified Name:     aps.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */