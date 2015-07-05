package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public abstract class PagerAdapter
{
  public static final int POSITION_NONE = -2;
  public static final int POSITION_UNCHANGED = -1;
  public DataSetObservable mObservable = new DataSetObservable();
  
  private static void destroyItem$7e55ba3e()
  {
    throw new UnsupportedOperationException("Required method destroyItem was not overridden");
  }
  
  private static void finishUpdate$3c7ec8c3() {}
  
  private static float getPageWidth$13461e()
  {
    return 1.0F;
  }
  
  private static Object instantiateItem$e9b6c8c()
  {
    throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
  }
  
  private void notifyDataSetChanged()
  {
    mObservable.notifyChanged();
  }
  
  private static void setPrimaryItem$7e55ba3e() {}
  
  private static void startUpdate$3c7ec8c3() {}
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    throw new UnsupportedOperationException("Required method destroyItem was not overridden");
  }
  
  public void finishUpdate$52bc874c() {}
  
  public abstract int getCount();
  
  public int getItemPosition(Object paramObject)
  {
    return -1;
  }
  
  public CharSequence getPageTitle(int paramInt)
  {
    return null;
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
  }
  
  public abstract boolean isViewFromObject(View paramView, Object paramObject);
  
  public final void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    mObservable.registerObserver(paramDataSetObserver);
  }
  
  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader) {}
  
  public Parcelable saveState()
  {
    return null;
  }
  
  public void setPrimaryItem$30510aeb(Object paramObject) {}
  
  public void startUpdate$52bc874c() {}
  
  public final void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    mObservable.unregisterObserver(paramDataSetObserver);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.PagerAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */