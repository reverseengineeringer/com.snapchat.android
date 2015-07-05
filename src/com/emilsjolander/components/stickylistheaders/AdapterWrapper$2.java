package com.emilsjolander.components.stickylistheaders;

import android.view.View;
import android.view.View.OnClickListener;

final class AdapterWrapper$2
  implements View.OnClickListener
{
  AdapterWrapper$2(AdapterWrapper paramAdapterWrapper, int paramInt) {}
  
  public final void onClick(View paramView)
  {
    if (AdapterWrapper.access$300(this$0) != null) {
      this$0.mDelegate.getHeaderId(val$position);
    }
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.AdapterWrapper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */