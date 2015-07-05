package com.brightcove.player.display.tasks;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.util.ErrorUtil;
import java.lang.ref.WeakReference;
import java.net.URI;

@Emits(events={"didSetVideoStill"})
@ListensFor(events={})
public class LoadImageTask
  extends AsyncTask<URI, Void, Bitmap>
  implements Component
{
  public static final String TAG = LoadImageTask.class.getSimpleName();
  private EventEmitter eventEmitter;
  private HttpService httpService;
  private int imageNotLoadedResourceId = 17301532;
  private final WeakReference<ImageView> imageViewReference;
  private String successEventType;
  
  public LoadImageTask(ImageView paramImageView, EventEmitter paramEventEmitter)
  {
    if ((paramImageView == null) || (paramEventEmitter == null)) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("imageViewAndEventEmitterRequired"));
    }
    eventEmitter = RegisteringEventEmitter.build(paramEventEmitter, LoadImageTask.class);
    imageViewReference = new WeakReference(paramImageView);
    httpService = new HttpService();
  }
  
  @SuppressLint({"NewApi"})
  private int getByteCount(Bitmap paramBitmap)
  {
    try
    {
      int i = paramBitmap.getByteCount();
      return i;
    }
    catch (Exception paramBitmap) {}
    return -1;
  }
  
  @SuppressLint({"NewApi"})
  private Display getDisplay()
  {
    ImageView localImageView = (ImageView)imageViewReference.get();
    if (localImageView != null)
    {
      if (Build.VERSION.SDK_INT >= 17) {
        return localImageView.getDisplay();
      }
      return ((WindowManager)localImageView.getContext().getSystemService("window")).getDefaultDisplay();
    }
    return null;
  }
  
  @SuppressLint({"NewApi"})
  private Point getDisplaySize()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (Build.VERSION.SDK_INT >= 13)
    {
      Display localDisplay = getDisplay();
      localObject1 = localObject2;
      if (localDisplay != null)
      {
        localObject1 = new Point();
        localDisplay.getSize((Point)localObject1);
      }
    }
    return (Point)localObject1;
  }
  
  protected Bitmap doInBackground(URI... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0) || (paramVarArgs[0] == null)) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("urlRequired"));
    }
    Object localObject = paramVarArgs[0];
    try
    {
      Point localPoint = getDisplaySize();
      if (localPoint != null) {
        return httpService.doImageGetRequest((URI)localObject, x, y);
      }
      localObject = httpService.doImageGetRequest((URI)localObject);
      return (Bitmap)localObject;
    }
    catch (Exception localException)
    {
      new StringBuilder("error encountered in loading image: ").append(paramVarArgs[0]);
    }
    return null;
  }
  
  public String getSuccessEventType()
  {
    return successEventType;
  }
  
  protected void onPostExecute(Bitmap paramBitmap)
  {
    if ((Build.VERSION.SDK_INT >= 12) && (paramBitmap != null)) {
      new StringBuilder("onPostExecute: byte count = ").append(getByteCount(paramBitmap));
    }
    ImageView localImageView;
    if (imageViewReference != null)
    {
      localImageView = (ImageView)imageViewReference.get();
      if (localImageView != null)
      {
        if (paramBitmap == null) {
          break label91;
        }
        localImageView.setImageBitmap(paramBitmap);
        localImageView.setVisibility(0);
        localImageView.requestLayout();
        if (successEventType != null) {
          eventEmitter.emit(successEventType);
        }
      }
    }
    return;
    label91:
    localImageView.setImageResource(imageNotLoadedResourceId);
  }
  
  public void setSuccessEventType(String paramString)
  {
    successEventType = paramString;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.tasks.LoadImageTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */