import android.support.v4.util.ContainerHelpers;
import android.support.v4.util.LongSparseArray;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;

public final class bpu
  implements bpt
{
  private final bpq a;
  private final LongSparseArray<View> b = new LongSparseArray();
  private final bpy c;
  
  public bpu(bpq parambpq, bpy parambpy)
  {
    a = parambpq;
    c = parambpy;
  }
  
  public final View a(RecyclerView paramRecyclerView, int paramInt)
  {
    long l = a.e(paramInt);
    Object localObject = b;
    int i = ContainerHelpers.binarySearch(mKeys, mSize, l);
    if ((i < 0) || (mValues[i] == LongSparseArray.DELETED))
    {
      localObject = null;
      View localView = (View)localObject;
      localObject = localView;
      if (localView == null)
      {
        localObject = a.a(paramRecyclerView);
        a.c((RecyclerView.s)localObject, paramInt);
        localObject = a;
        if (((View)localObject).getLayoutParams() == null) {
          ((View)localObject).setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        }
        if (c.a(paramRecyclerView) != 1) {
          break label248;
        }
        i = View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getWidth(), 1073741824);
      }
    }
    for (paramInt = View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getHeight(), 0);; paramInt = View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getHeight(), 1073741824))
    {
      ((View)localObject).measure(ViewGroup.getChildMeasureSpec(i, paramRecyclerView.getPaddingLeft() + paramRecyclerView.getPaddingRight(), getLayoutParamswidth), ViewGroup.getChildMeasureSpec(paramInt, paramRecyclerView.getPaddingTop() + paramRecyclerView.getPaddingBottom(), getLayoutParamsheight));
      ((View)localObject).layout(0, 0, ((View)localObject).getMeasuredWidth(), ((View)localObject).getMeasuredHeight());
      b.put(l, localObject);
      return (View)localObject;
      localObject = mValues[i];
      break;
      label248:
      i = View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getWidth(), 0);
    }
  }
}

/* Location:
 * Qualified Name:     bpu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */