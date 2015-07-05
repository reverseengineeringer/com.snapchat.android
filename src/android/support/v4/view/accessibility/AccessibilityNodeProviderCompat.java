package android.support.v4.view.accessibility;

import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public class AccessibilityNodeProviderCompat
{
  private static final AccessibilityNodeProviderImpl IMPL = new AccessibilityNodeProviderStubImpl();
  public final Object mProvider;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      IMPL = new AccessibilityNodeProviderKitKatImpl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      IMPL = new AccessibilityNodeProviderJellyBeanImpl();
      return;
    }
  }
  
  public AccessibilityNodeProviderCompat()
  {
    mProvider = IMPL.newAccessibilityNodeProviderBridge(this);
  }
  
  public AccessibilityNodeProviderCompat(Object paramObject)
  {
    mProvider = paramObject;
  }
  
  public static List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText$2393931d()
  {
    return null;
  }
  
  public static AccessibilityNodeInfoCompat findFocus$f3a5639()
  {
    return null;
  }
  
  private Object getProvider()
  {
    return mProvider;
  }
  
  public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int paramInt)
  {
    return null;
  }
  
  public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return false;
  }
  
  static abstract interface AccessibilityNodeProviderImpl
  {
    public abstract Object newAccessibilityNodeProviderBridge(AccessibilityNodeProviderCompat paramAccessibilityNodeProviderCompat);
  }
  
  static final class AccessibilityNodeProviderJellyBeanImpl
    extends AccessibilityNodeProviderCompat.AccessibilityNodeProviderStubImpl
  {
    public final Object newAccessibilityNodeProviderBridge(final AccessibilityNodeProviderCompat paramAccessibilityNodeProviderCompat)
    {
      AccessibilityNodeProviderCompatJellyBean.newAccessibilityNodeProviderBridge(new AccessibilityNodeProviderCompatJellyBean.AccessibilityNodeInfoBridge()
      {
        public final Object createAccessibilityNodeInfo(int paramAnonymousInt)
        {
          AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = paramAccessibilityNodeProviderCompat.createAccessibilityNodeInfo(paramAnonymousInt);
          if (localAccessibilityNodeInfoCompat == null) {
            return null;
          }
          return mInfo;
        }
        
        public final List<Object> findAccessibilityNodeInfosByText$2393931d()
        {
          AccessibilityNodeProviderCompat.findAccessibilityNodeInfosByText$2393931d();
          new ArrayList();
          throw new NullPointerException();
        }
        
        public final boolean performAction(int paramAnonymousInt1, int paramAnonymousInt2, Bundle paramAnonymousBundle)
        {
          return paramAccessibilityNodeProviderCompat.performAction(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousBundle);
        }
      });
    }
  }
  
  static final class AccessibilityNodeProviderKitKatImpl
    extends AccessibilityNodeProviderCompat.AccessibilityNodeProviderStubImpl
  {
    public final Object newAccessibilityNodeProviderBridge(final AccessibilityNodeProviderCompat paramAccessibilityNodeProviderCompat)
    {
      AccessibilityNodeProviderCompatKitKat.newAccessibilityNodeProviderBridge(new AccessibilityNodeProviderCompatKitKat.AccessibilityNodeInfoBridge()
      {
        public final Object createAccessibilityNodeInfo(int paramAnonymousInt)
        {
          AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = paramAccessibilityNodeProviderCompat.createAccessibilityNodeInfo(paramAnonymousInt);
          if (localAccessibilityNodeInfoCompat == null) {
            return null;
          }
          return mInfo;
        }
        
        public final List<Object> findAccessibilityNodeInfosByText$2393931d()
        {
          AccessibilityNodeProviderCompat.findAccessibilityNodeInfosByText$2393931d();
          new ArrayList();
          throw new NullPointerException();
        }
        
        public final Object findFocus$54cf32c4()
        {
          AccessibilityNodeProviderCompat.findFocus$f3a5639();
          return null;
        }
        
        public final boolean performAction(int paramAnonymousInt1, int paramAnonymousInt2, Bundle paramAnonymousBundle)
        {
          return paramAccessibilityNodeProviderCompat.performAction(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousBundle);
        }
      });
    }
  }
  
  static class AccessibilityNodeProviderStubImpl
    implements AccessibilityNodeProviderCompat.AccessibilityNodeProviderImpl
  {
    public Object newAccessibilityNodeProviderBridge(AccessibilityNodeProviderCompat paramAccessibilityNodeProviderCompat)
    {
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeProviderCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */