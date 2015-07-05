import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.j;

public final class aqm
  extends RecyclerView.j
{
  private final baa a;
  private final String b;
  
  public aqm(baa parambaa, String paramString)
  {
    a = parambaa;
    b = paramString;
  }
  
  public final void a(RecyclerView paramRecyclerView, int paramInt)
  {
    if (paramInt == 0)
    {
      a.a(b, true);
      return;
    }
    a.mDeferPause = true;
  }
  
  public final void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     aqm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */