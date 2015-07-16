import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.stories.ui.MyStoryView;
import com.snapchat.android.stories.ui.MyStoryView.a;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.ui.VerticalSwipeLayout.a;
import javax.validation.constraints.NotNull;

public final class aps
  implements MyStoryView.a
{
  public final VerticalSwipeLayout a;
  public final Context b;
  public final VerticalSwipeLayout.a c;
  public aen d;
  private final aps.a e;
  
  public aps(@NotNull Context paramContext, @NotNull VerticalSwipeLayout paramVerticalSwipeLayout, @NotNull VerticalSwipeLayout.a parama, @NotNull aps.a parama1)
  {
    b = paramContext;
    a = paramVerticalSwipeLayout;
    c = parama;
    e = parama1;
  }
  
  public final void a()
  {
    if ((a.getChildCount() > 1) && (a.getCurrentPanel() != 1)) {
      a.a(1, 1.0D);
    }
  }
  
  public final void b()
  {
    if ((a.getChildCount() > 1) && (a.getCurrentPanel() != 0)) {
      a.a(0, 1.0D);
    }
  }
  
  public final void c()
  {
    e.a();
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     aps
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */