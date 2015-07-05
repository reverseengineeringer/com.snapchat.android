package android.support.v4.media.routing;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.media.MediaRouter;
import android.media.MediaRouter.Callback;
import android.media.MediaRouter.RouteCategory;
import android.media.MediaRouter.RouteGroup;
import android.media.MediaRouter.RouteInfo;
import android.media.MediaRouter.UserRouteInfo;
import android.media.MediaRouter.VolumeCallback;
import android.media.RemoteControlClient;
import android.os.Build.VERSION;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

class MediaRouterJellybean
{
  public static final int ALL_ROUTE_TYPES = 8388611;
  public static final int ROUTE_TYPE_LIVE_AUDIO = 1;
  public static final int ROUTE_TYPE_LIVE_VIDEO = 2;
  public static final int ROUTE_TYPE_USER = 8388608;
  private static final String TAG = "MediaRouterJellybean";
  
  private static void addCallback(Object paramObject1, int paramInt, Object paramObject2)
  {
    ((MediaRouter)paramObject1).addCallback(paramInt, (MediaRouter.Callback)paramObject2);
  }
  
  private static void addUserRoute(Object paramObject1, Object paramObject2)
  {
    ((MediaRouter)paramObject1).addUserRoute((MediaRouter.UserRouteInfo)paramObject2);
  }
  
  private static Object createCallback(Callback paramCallback)
  {
    return new CallbackProxy(paramCallback);
  }
  
  private static Object createRouteCategory(Object paramObject, String paramString, boolean paramBoolean)
  {
    return ((MediaRouter)paramObject).createRouteCategory(paramString, paramBoolean);
  }
  
  private static Object createUserRoute(Object paramObject1, Object paramObject2)
  {
    return ((MediaRouter)paramObject1).createUserRoute((MediaRouter.RouteCategory)paramObject2);
  }
  
  private static Object createVolumeCallback(VolumeCallback paramVolumeCallback)
  {
    return new VolumeCallbackProxy(paramVolumeCallback);
  }
  
  private static List getCategories(Object paramObject)
  {
    paramObject = (MediaRouter)paramObject;
    int j = ((MediaRouter)paramObject).getCategoryCount();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(((MediaRouter)paramObject).getCategoryAt(i));
      i += 1;
    }
    return localArrayList;
  }
  
  private static Object getMediaRouter(Context paramContext)
  {
    return paramContext.getSystemService("media_router");
  }
  
  private static List getRoutes(Object paramObject)
  {
    paramObject = (MediaRouter)paramObject;
    int j = ((MediaRouter)paramObject).getRouteCount();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(((MediaRouter)paramObject).getRouteAt(i));
      i += 1;
    }
    return localArrayList;
  }
  
  private static Object getSelectedRoute(Object paramObject, int paramInt)
  {
    return ((MediaRouter)paramObject).getSelectedRoute(paramInt);
  }
  
  private static void removeCallback(Object paramObject1, Object paramObject2)
  {
    ((MediaRouter)paramObject1).removeCallback((MediaRouter.Callback)paramObject2);
  }
  
  private static void removeUserRoute(Object paramObject1, Object paramObject2)
  {
    ((MediaRouter)paramObject1).removeUserRoute((MediaRouter.UserRouteInfo)paramObject2);
  }
  
  private static void selectRoute(Object paramObject1, int paramInt, Object paramObject2)
  {
    ((MediaRouter)paramObject1).selectRoute(paramInt, (MediaRouter.RouteInfo)paramObject2);
  }
  
  public static abstract interface Callback
  {
    public abstract void onRouteAdded$5d527811();
    
    public abstract void onRouteChanged$5d527811();
    
    public abstract void onRouteGrouped$211bbd0a();
    
    public abstract void onRouteRemoved$5d527811();
    
    public abstract void onRouteSelected$1ef468a();
    
    public abstract void onRouteUngrouped$2838e5ad();
    
    public abstract void onRouteUnselected$1ef468a();
    
    public abstract void onRouteVolumeChanged$5d527811();
  }
  
  static class CallbackProxy<T extends MediaRouterJellybean.Callback>
    extends MediaRouter.Callback
  {
    protected final T mCallback;
    
    public CallbackProxy(T paramT)
    {
      mCallback = paramT;
    }
    
    public void onRouteAdded(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRouteChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRouteGrouped(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo, MediaRouter.RouteGroup paramRouteGroup, int paramInt) {}
    
    public void onRouteRemoved(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRouteSelected(MediaRouter paramMediaRouter, int paramInt, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRouteUngrouped(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo, MediaRouter.RouteGroup paramRouteGroup) {}
    
    public void onRouteUnselected(MediaRouter paramMediaRouter, int paramInt, MediaRouter.RouteInfo paramRouteInfo) {}
    
    public void onRouteVolumeChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo) {}
  }
  
  public static final class GetDefaultRouteWorkaround
  {
    private Method mGetSystemAudioRouteMethod;
    
    public GetDefaultRouteWorkaround()
    {
      if ((Build.VERSION.SDK_INT < 16) || (Build.VERSION.SDK_INT > 17)) {
        throw new UnsupportedOperationException();
      }
      try
      {
        mGetSystemAudioRouteMethod = MediaRouter.class.getMethod("getSystemAudioRoute", new Class[0]);
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException) {}
    }
    
    private Object getDefaultRoute(Object paramObject)
    {
      paramObject = (MediaRouter)paramObject;
      if (mGetSystemAudioRouteMethod != null) {}
      try
      {
        Object localObject = mGetSystemAudioRouteMethod.invoke(paramObject, new Object[0]);
        return localObject;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        return ((MediaRouter)paramObject).getRouteAt(0);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        for (;;) {}
      }
    }
  }
  
  public static final class RouteCategory
  {
    private static CharSequence getName(Object paramObject, Context paramContext)
    {
      return ((MediaRouter.RouteCategory)paramObject).getName(paramContext);
    }
    
    private static List getRoutes(Object paramObject)
    {
      ArrayList localArrayList = new ArrayList();
      ((MediaRouter.RouteCategory)paramObject).getRoutes(localArrayList);
      return localArrayList;
    }
    
    private static int getSupportedTypes(Object paramObject)
    {
      return ((MediaRouter.RouteCategory)paramObject).getSupportedTypes();
    }
    
    private static boolean isGroupable(Object paramObject)
    {
      return ((MediaRouter.RouteCategory)paramObject).isGroupable();
    }
  }
  
  public static final class RouteGroup
  {
    private static List getGroupedRoutes(Object paramObject)
    {
      paramObject = (MediaRouter.RouteGroup)paramObject;
      int j = ((MediaRouter.RouteGroup)paramObject).getRouteCount();
      ArrayList localArrayList = new ArrayList(j);
      int i = 0;
      while (i < j)
      {
        localArrayList.add(((MediaRouter.RouteGroup)paramObject).getRouteAt(i));
        i += 1;
      }
      return localArrayList;
    }
  }
  
  public static final class RouteInfo
  {
    private static Object getCategory(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getCategory();
    }
    
    private static Object getGroup(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getGroup();
    }
    
    private static Drawable getIconDrawable(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getIconDrawable();
    }
    
    private static CharSequence getName(Object paramObject, Context paramContext)
    {
      return ((MediaRouter.RouteInfo)paramObject).getName(paramContext);
    }
    
    private static int getPlaybackStream(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getPlaybackStream();
    }
    
    private static int getPlaybackType(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getPlaybackType();
    }
    
    private static CharSequence getStatus(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getStatus();
    }
    
    private static int getSupportedTypes(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getSupportedTypes();
    }
    
    private static Object getTag(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getTag();
    }
    
    private static int getVolume(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getVolume();
    }
    
    private static int getVolumeHandling(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getVolumeHandling();
    }
    
    private static int getVolumeMax(Object paramObject)
    {
      return ((MediaRouter.RouteInfo)paramObject).getVolumeMax();
    }
    
    private static boolean isGroup(Object paramObject)
    {
      return paramObject instanceof MediaRouter.RouteGroup;
    }
    
    private static void requestSetVolume(Object paramObject, int paramInt)
    {
      ((MediaRouter.RouteInfo)paramObject).requestSetVolume(paramInt);
    }
    
    private static void requestUpdateVolume(Object paramObject, int paramInt)
    {
      ((MediaRouter.RouteInfo)paramObject).requestUpdateVolume(paramInt);
    }
    
    private static void setTag(Object paramObject1, Object paramObject2)
    {
      ((MediaRouter.RouteInfo)paramObject1).setTag(paramObject2);
    }
  }
  
  public static final class SelectRouteWorkaround
  {
    private Method mSelectRouteIntMethod;
    
    public SelectRouteWorkaround()
    {
      if ((Build.VERSION.SDK_INT < 16) || (Build.VERSION.SDK_INT > 17)) {
        throw new UnsupportedOperationException();
      }
      try
      {
        mSelectRouteIntMethod = MediaRouter.class.getMethod("selectRouteInt", new Class[] { Integer.TYPE, MediaRouter.RouteInfo.class });
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException) {}
    }
    
    private void selectRoute(Object paramObject1, int paramInt, Object paramObject2)
    {
      paramObject1 = (MediaRouter)paramObject1;
      paramObject2 = (MediaRouter.RouteInfo)paramObject2;
      if (((((MediaRouter.RouteInfo)paramObject2).getSupportedTypes() & 0x800000) == 0) && (mSelectRouteIntMethod != null)) {}
      try
      {
        mSelectRouteIntMethod.invoke(paramObject1, new Object[] { Integer.valueOf(paramInt), paramObject2 });
        return;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        ((MediaRouter)paramObject1).selectRoute(paramInt, (MediaRouter.RouteInfo)paramObject2);
        return;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        for (;;) {}
      }
    }
  }
  
  public static final class UserRouteInfo
  {
    private static void setIconDrawable(Object paramObject, Drawable paramDrawable)
    {
      ((MediaRouter.UserRouteInfo)paramObject).setIconDrawable(paramDrawable);
    }
    
    private static void setName(Object paramObject, CharSequence paramCharSequence)
    {
      ((MediaRouter.UserRouteInfo)paramObject).setName(paramCharSequence);
    }
    
    private static void setPlaybackStream(Object paramObject, int paramInt)
    {
      ((MediaRouter.UserRouteInfo)paramObject).setPlaybackStream(paramInt);
    }
    
    private static void setPlaybackType(Object paramObject, int paramInt)
    {
      ((MediaRouter.UserRouteInfo)paramObject).setPlaybackType(paramInt);
    }
    
    private static void setRemoteControlClient(Object paramObject1, Object paramObject2)
    {
      ((MediaRouter.UserRouteInfo)paramObject1).setRemoteControlClient((RemoteControlClient)paramObject2);
    }
    
    private static void setStatus(Object paramObject, CharSequence paramCharSequence)
    {
      ((MediaRouter.UserRouteInfo)paramObject).setStatus(paramCharSequence);
    }
    
    private static void setVolume(Object paramObject, int paramInt)
    {
      ((MediaRouter.UserRouteInfo)paramObject).setVolume(paramInt);
    }
    
    private static void setVolumeCallback(Object paramObject1, Object paramObject2)
    {
      ((MediaRouter.UserRouteInfo)paramObject1).setVolumeCallback((MediaRouter.VolumeCallback)paramObject2);
    }
    
    private static void setVolumeHandling(Object paramObject, int paramInt)
    {
      ((MediaRouter.UserRouteInfo)paramObject).setVolumeHandling(paramInt);
    }
    
    private static void setVolumeMax(Object paramObject, int paramInt)
    {
      ((MediaRouter.UserRouteInfo)paramObject).setVolumeMax(paramInt);
    }
  }
  
  public static abstract interface VolumeCallback
  {
    public abstract void onVolumeSetRequest$4cfcfd12();
    
    public abstract void onVolumeUpdateRequest$4cfcfd12();
  }
  
  static final class VolumeCallbackProxy<T extends MediaRouterJellybean.VolumeCallback>
    extends MediaRouter.VolumeCallback
  {
    protected final T mCallback;
    
    public VolumeCallbackProxy(T paramT)
    {
      mCallback = paramT;
    }
    
    public final void onVolumeSetRequest(MediaRouter.RouteInfo paramRouteInfo, int paramInt) {}
    
    public final void onVolumeUpdateRequest(MediaRouter.RouteInfo paramRouteInfo, int paramInt) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.routing.MediaRouterJellybean
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */