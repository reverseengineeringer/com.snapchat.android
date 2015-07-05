package android.support.v4.widget;

import android.database.DataSetObserver;

final class CursorAdapter$MyDataSetObserver
  extends DataSetObserver
{
  private CursorAdapter$MyDataSetObserver(CursorAdapter paramCursorAdapter) {}
  
  public final void onChanged()
  {
    this$0.mDataValid = true;
    this$0.notifyDataSetChanged();
  }
  
  public final void onInvalidated()
  {
    this$0.mDataValid = false;
    this$0.notifyDataSetInvalidated();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.CursorAdapter.MyDataSetObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */