import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.s;
import android.view.View;

public final class ckw
  extends ckx
{
  public ckw(cks paramcks)
  {
    super(paramcks);
  }
  
  public final float a(RecyclerView paramRecyclerView)
  {
    Object localObject = (LinearLayoutManager)paramRecyclerView.getLayoutManager();
    localObject = ((LinearLayoutManager)localObject).a(((LinearLayoutManager)localObject).l() - 1, -1, true);
    if (localObject == null) {}
    for (int i = -1;; i = LinearLayoutManager.a((View)localObject))
    {
      localObject = paramRecyclerView.getChildAt(0);
      if (localObject != null) {
        break;
      }
      return 0.0F;
    }
    int j = aa.getHeight();
    int k = paramRecyclerView.getHeight() / j;
    j = paramRecyclerView.getAdapter().a();
    k = j - k;
    return (i - (j - k - 1)) / k;
  }
}

/* Location:
 * Qualified Name:     ckw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */