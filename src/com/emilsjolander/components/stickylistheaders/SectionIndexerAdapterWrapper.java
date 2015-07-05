package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.widget.SectionIndexer;

final class SectionIndexerAdapterWrapper
  extends AdapterWrapper
  implements SectionIndexer
{
  final SectionIndexer mSectionIndexerDelegate;
  
  SectionIndexerAdapterWrapper(Context paramContext, StickyListHeadersAdapter paramStickyListHeadersAdapter)
  {
    super(paramContext, paramStickyListHeadersAdapter);
    mSectionIndexerDelegate = ((SectionIndexer)paramStickyListHeadersAdapter);
  }
  
  public final int getPositionForSection(int paramInt)
  {
    return mSectionIndexerDelegate.getPositionForSection(paramInt);
  }
  
  public final int getSectionForPosition(int paramInt)
  {
    return mSectionIndexerDelegate.getSectionForPosition(paramInt);
  }
  
  public final Object[] getSections()
  {
    return mSectionIndexerDelegate.getSections();
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.SectionIndexerAdapterWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */