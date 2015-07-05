package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.widget.Checkable;

final class CheckableWrapperView
  extends WrapperView
  implements Checkable
{
  public CheckableWrapperView(Context paramContext)
  {
    super(paramContext);
  }
  
  public final boolean isChecked()
  {
    return ((Checkable)mItem).isChecked();
  }
  
  public final void setChecked(boolean paramBoolean)
  {
    ((Checkable)mItem).setChecked(paramBoolean);
  }
  
  public final void toggle()
  {
    if (!isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.CheckableWrapperView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */