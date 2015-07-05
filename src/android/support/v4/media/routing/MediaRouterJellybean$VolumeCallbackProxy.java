package android.support.v4.media.routing;

import android.media.MediaRouter.RouteInfo;
import android.media.MediaRouter.VolumeCallback;

final class MediaRouterJellybean$VolumeCallbackProxy<T extends MediaRouterJellybean.VolumeCallback>
  extends MediaRouter.VolumeCallback
{
  protected final T mCallback;
  
  public MediaRouterJellybean$VolumeCallbackProxy(T paramT)
  {
    mCallback = paramT;
  }
  
  public final void onVolumeSetRequest(MediaRouter.RouteInfo paramRouteInfo, int paramInt) {}
  
  public final void onVolumeUpdateRequest(MediaRouter.RouteInfo paramRouteInfo, int paramInt) {}
}

/* Location:
 * Qualified Name:     android.support.v4.media.routing.MediaRouterJellybean.VolumeCallbackProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */