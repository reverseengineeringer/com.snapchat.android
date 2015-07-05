import android.content.Context;
import android.view.ViewGroup;
import com.snapchat.android.rendering.SnapMediaRenderer;

public final class ank
{
  public final SnapMediaRenderer[] a = new SnapMediaRenderer[2];
  public final SnapMediaRenderer[] b = new SnapMediaRenderer[2];
  public int c = 0;
  public int d = 0;
  
  public ank(Context paramContext)
  {
    while (i < 2)
    {
      a[i] = new ano(paramContext);
      b[i] = new anl(paramContext);
      i += 1;
    }
  }
  
  public final void a(ViewGroup paramViewGroup)
  {
    int i = 0;
    while (i < 2)
    {
      a[i].a(paramViewGroup);
      b[i].a(paramViewGroup);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     ank
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */