package com.emilsjolander.components.stickylistheaders;

import android.database.DataSetObserver;
import java.util.List;

final class AdapterWrapper$1
  extends DataSetObserver
{
  AdapterWrapper$1(AdapterWrapper paramAdapterWrapper) {}
  
  public final void onChanged()
  {
    AdapterWrapper.access$201(this$0);
  }
  
  public final void onInvalidated()
  {
    AdapterWrapper.access$000(this$0).clear();
    AdapterWrapper.access$101(this$0);
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.AdapterWrapper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */