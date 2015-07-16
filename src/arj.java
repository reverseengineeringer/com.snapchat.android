import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.j;

public final class arj
  extends RecyclerView.j
{
  private final bbb a;
  private final String b;
  
  public arj(bbb parambbb, String paramString)
  {
    a = parambbb;
    b = paramString;
  }
  
  public final void a(RecyclerView paramRecyclerView, int paramInt)
  {
    if (paramInt == 0)
    {
      a.b(new String[] { b, "VERTICAL" });
      return;
    }
    a.mDeferPause = true;
  }
  
  public final void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     arj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */