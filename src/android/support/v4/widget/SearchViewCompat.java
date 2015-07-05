package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;
import android.view.View;

public final class SearchViewCompat
{
  private static final SearchViewCompatImpl IMPL = new SearchViewCompatStubImpl();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new SearchViewCompatIcsImpl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      IMPL = new SearchViewCompatHoneycombImpl();
      return;
    }
  }
  
  private static CharSequence getQuery(View paramView)
  {
    return IMPL.getQuery(paramView);
  }
  
  private static boolean isIconified(View paramView)
  {
    return IMPL.isIconified(paramView);
  }
  
  private static boolean isQueryRefinementEnabled(View paramView)
  {
    return IMPL.isQueryRefinementEnabled(paramView);
  }
  
  private static boolean isSubmitButtonEnabled(View paramView)
  {
    return IMPL.isSubmitButtonEnabled(paramView);
  }
  
  private static View newSearchView(Context paramContext)
  {
    return IMPL.newSearchView(paramContext);
  }
  
  private static void setIconified(View paramView, boolean paramBoolean)
  {
    IMPL.setIconified(paramView, paramBoolean);
  }
  
  private static void setImeOptions(View paramView, int paramInt)
  {
    IMPL.setImeOptions(paramView, paramInt);
  }
  
  private static void setInputType(View paramView, int paramInt)
  {
    IMPL.setInputType(paramView, paramInt);
  }
  
  private static void setMaxWidth(View paramView, int paramInt)
  {
    IMPL.setMaxWidth(paramView, paramInt);
  }
  
  private static void setOnCloseListener(View paramView, OnCloseListenerCompat paramOnCloseListenerCompat)
  {
    IMPL.setOnCloseListener(paramView, mListener);
  }
  
  private static void setOnQueryTextListener(View paramView, OnQueryTextListenerCompat paramOnQueryTextListenerCompat)
  {
    IMPL.setOnQueryTextListener(paramView, mListener);
  }
  
  private static void setQuery(View paramView, CharSequence paramCharSequence, boolean paramBoolean)
  {
    IMPL.setQuery(paramView, paramCharSequence, paramBoolean);
  }
  
  private static void setQueryHint(View paramView, CharSequence paramCharSequence)
  {
    IMPL.setQueryHint(paramView, paramCharSequence);
  }
  
  private static void setQueryRefinementEnabled(View paramView, boolean paramBoolean)
  {
    IMPL.setQueryRefinementEnabled(paramView, paramBoolean);
  }
  
  private static void setSearchableInfo(View paramView, ComponentName paramComponentName)
  {
    IMPL.setSearchableInfo(paramView, paramComponentName);
  }
  
  private static void setSubmitButtonEnabled(View paramView, boolean paramBoolean)
  {
    IMPL.setSubmitButtonEnabled(paramView, paramBoolean);
  }
  
  public static abstract class OnCloseListenerCompat
  {
    final Object mListener = SearchViewCompat.IMPL.newOnCloseListener(this);
    
    private static boolean onClose()
    {
      return false;
    }
  }
  
  public static abstract class OnQueryTextListenerCompat
  {
    final Object mListener = SearchViewCompat.IMPL.newOnQueryTextListener(this);
    
    private static boolean onQueryTextChange$552c4dfd()
    {
      return false;
    }
    
    private static boolean onQueryTextSubmit$552c4dfd()
    {
      return false;
    }
  }
  
  static class SearchViewCompatHoneycombImpl
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
  
  static final class SearchViewCompatIcsImpl
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
  
  static abstract interface SearchViewCompatImpl
  {
    public abstract CharSequence getQuery(View paramView);
    
    public abstract boolean isIconified(View paramView);
    
    public abstract boolean isQueryRefinementEnabled(View paramView);
    
    public abstract boolean isSubmitButtonEnabled(View paramView);
    
    public abstract Object newOnCloseListener(SearchViewCompat.OnCloseListenerCompat paramOnCloseListenerCompat);
    
    public abstract Object newOnQueryTextListener(SearchViewCompat.OnQueryTextListenerCompat paramOnQueryTextListenerCompat);
    
    public abstract View newSearchView(Context paramContext);
    
    public abstract void setIconified(View paramView, boolean paramBoolean);
    
    public abstract void setImeOptions(View paramView, int paramInt);
    
    public abstract void setInputType(View paramView, int paramInt);
    
    public abstract void setMaxWidth(View paramView, int paramInt);
    
    public abstract void setOnCloseListener(Object paramObject1, Object paramObject2);
    
    public abstract void setOnQueryTextListener(Object paramObject1, Object paramObject2);
    
    public abstract void setQuery(View paramView, CharSequence paramCharSequence, boolean paramBoolean);
    
    public abstract void setQueryHint(View paramView, CharSequence paramCharSequence);
    
    public abstract void setQueryRefinementEnabled(View paramView, boolean paramBoolean);
    
    public abstract void setSearchableInfo(View paramView, ComponentName paramComponentName);
    
    public abstract void setSubmitButtonEnabled(View paramView, boolean paramBoolean);
  }
  
  static class SearchViewCompatStubImpl
    implements SearchViewCompat.SearchViewCompatImpl
  {
    public CharSequence getQuery(View paramView)
    {
      return null;
    }
    
    public boolean isIconified(View paramView)
    {
      return true;
    }
    
    public boolean isQueryRefinementEnabled(View paramView)
    {
      return false;
    }
    
    public boolean isSubmitButtonEnabled(View paramView)
    {
      return false;
    }
    
    public Object newOnCloseListener(SearchViewCompat.OnCloseListenerCompat paramOnCloseListenerCompat)
    {
      return null;
    }
    
    public Object newOnQueryTextListener(SearchViewCompat.OnQueryTextListenerCompat paramOnQueryTextListenerCompat)
    {
      return null;
    }
    
    public View newSearchView(Context paramContext)
    {
      return null;
    }
    
    public void setIconified(View paramView, boolean paramBoolean) {}
    
    public void setImeOptions(View paramView, int paramInt) {}
    
    public void setInputType(View paramView, int paramInt) {}
    
    public void setMaxWidth(View paramView, int paramInt) {}
    
    public void setOnCloseListener(Object paramObject1, Object paramObject2) {}
    
    public void setOnQueryTextListener(Object paramObject1, Object paramObject2) {}
    
    public void setQuery(View paramView, CharSequence paramCharSequence, boolean paramBoolean) {}
    
    public void setQueryHint(View paramView, CharSequence paramCharSequence) {}
    
    public void setQueryRefinementEnabled(View paramView, boolean paramBoolean) {}
    
    public void setSearchableInfo(View paramView, ComponentName paramComponentName) {}
    
    public void setSubmitButtonEnabled(View paramView, boolean paramBoolean) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SearchViewCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */