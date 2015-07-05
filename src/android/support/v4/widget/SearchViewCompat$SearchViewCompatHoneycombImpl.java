package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.view.View;

class SearchViewCompat$SearchViewCompatHoneycombImpl
  extends SearchViewCompat.SearchViewCompatStubImpl
{
  public final CharSequence getQuery(View paramView)
  {
    return SearchViewCompatHoneycomb.getQuery(paramView);
  }
  
  public final boolean isIconified(View paramView)
  {
    return SearchViewCompatHoneycomb.isIconified(paramView);
  }
  
  public final boolean isQueryRefinementEnabled(View paramView)
  {
    return SearchViewCompatHoneycomb.isQueryRefinementEnabled(paramView);
  }
  
  public final boolean isSubmitButtonEnabled(View paramView)
  {
    return SearchViewCompatHoneycomb.isSubmitButtonEnabled(paramView);
  }
  
  public final Object newOnCloseListener(final SearchViewCompat.OnCloseListenerCompat paramOnCloseListenerCompat)
  {
    SearchViewCompatHoneycomb.newOnCloseListener(new SearchViewCompatHoneycomb.OnCloseListenerCompatBridge()
    {
      public final boolean onClose()
      {
        return false;
      }
    });
  }
  
  public final Object newOnQueryTextListener(final SearchViewCompat.OnQueryTextListenerCompat paramOnQueryTextListenerCompat)
  {
    SearchViewCompatHoneycomb.newOnQueryTextListener(new SearchViewCompatHoneycomb.OnQueryTextListenerCompatBridge()
    {
      public final boolean onQueryTextChange$552c4dfd()
      {
        return false;
      }
      
      public final boolean onQueryTextSubmit$552c4dfd()
      {
        return false;
      }
    });
  }
  
  public View newSearchView(Context paramContext)
  {
    return SearchViewCompatHoneycomb.newSearchView(paramContext);
  }
  
  public final void setIconified(View paramView, boolean paramBoolean)
  {
    SearchViewCompatHoneycomb.setIconified(paramView, paramBoolean);
  }
  
  public final void setMaxWidth(View paramView, int paramInt)
  {
    SearchViewCompatHoneycomb.setMaxWidth(paramView, paramInt);
  }
  
  public final void setOnCloseListener(Object paramObject1, Object paramObject2)
  {
    SearchViewCompatHoneycomb.setOnCloseListener(paramObject1, paramObject2);
  }
  
  public final void setOnQueryTextListener(Object paramObject1, Object paramObject2)
  {
    SearchViewCompatHoneycomb.setOnQueryTextListener(paramObject1, paramObject2);
  }
  
  public final void setQuery(View paramView, CharSequence paramCharSequence, boolean paramBoolean)
  {
    SearchViewCompatHoneycomb.setQuery(paramView, paramCharSequence, paramBoolean);
  }
  
  public final void setQueryHint(View paramView, CharSequence paramCharSequence)
  {
    SearchViewCompatHoneycomb.setQueryHint(paramView, paramCharSequence);
  }
  
  public final void setQueryRefinementEnabled(View paramView, boolean paramBoolean)
  {
    SearchViewCompatHoneycomb.setQueryRefinementEnabled(paramView, paramBoolean);
  }
  
  public final void setSearchableInfo(View paramView, ComponentName paramComponentName)
  {
    SearchViewCompatHoneycomb.setSearchableInfo(paramView, paramComponentName);
  }
  
  public final void setSubmitButtonEnabled(View paramView, boolean paramBoolean)
  {
    SearchViewCompatHoneycomb.setSubmitButtonEnabled(paramView, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SearchViewCompat.SearchViewCompatHoneycombImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */