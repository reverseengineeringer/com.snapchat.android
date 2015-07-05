package android.support.v4.widget;

import android.content.Context;
import android.view.View;

final class SearchViewCompat$SearchViewCompatIcsImpl
  extends SearchViewCompat.SearchViewCompatHoneycombImpl
{
  public final View newSearchView(Context paramContext)
  {
    return SearchViewCompatIcs.newSearchView(paramContext);
  }
  
  public final void setImeOptions(View paramView, int paramInt)
  {
    SearchViewCompatIcs.setImeOptions(paramView, paramInt);
  }
  
  public final void setInputType(View paramView, int paramInt)
  {
    SearchViewCompatIcs.setInputType(paramView, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SearchViewCompat.SearchViewCompatIcsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */