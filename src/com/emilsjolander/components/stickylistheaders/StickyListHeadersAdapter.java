package com.emilsjolander.components.stickylistheaders;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;

public abstract interface StickyListHeadersAdapter
  extends ListAdapter
{
  public abstract long getHeaderId(int paramInt);
  
  public abstract View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup);
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */