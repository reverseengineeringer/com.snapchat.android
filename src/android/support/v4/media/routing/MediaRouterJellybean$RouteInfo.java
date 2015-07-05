package android.support.v4.media.routing;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.media.MediaRouter.RouteGroup;
import android.media.MediaRouter.RouteInfo;

public final class MediaRouterJellybean$RouteInfo
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

/* Location:
 * Qualified Name:     android.support.v4.media.routing.MediaRouterJellybean.RouteInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */