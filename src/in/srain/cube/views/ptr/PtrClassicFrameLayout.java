package in.srain.cube.views.ptr;

import android.content.Context;
import android.util.AttributeSet;

public class PtrClassicFrameLayout
  extends PtrFrameLayout
{
  private PtrClassicDefaultHeader a;
  
  public PtrClassicFrameLayout(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public PtrClassicFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public PtrClassicFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    a = new PtrClassicDefaultHeader(getContext());
    setHeaderView(a);
    a(a);
  }
  
  public PtrClassicDefaultHeader getHeader()
  {
    return a;
  }
  
  public void setLastUpdateTimeKey(String paramString)
  {
    if (a != null) {
      a.setLastUpdateTimeKey(paramString);
    }
  }
  
  public void setLastUpdateTimeRelateObject(Object paramObject)
  {
    if (a != null) {
      a.setLastUpdateTimeRelateObject(paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     in.srain.cube.views.ptr.PtrClassicFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */