package android.support.v4.view;

import android.database.DataSetObserver;

final class ViewPager$PagerObserver
  extends DataSetObserver
{
  private ViewPager$PagerObserver(ViewPager paramViewPager) {}
  
  public final void onChanged()
  {
    this$0.dataSetChanged();
  }
  
  public final void onInvalidated()
  {
    this$0.dataSetChanged();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPager.PagerObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */