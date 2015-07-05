package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzw;
import java.lang.ref.WeakReference;

public final class zza$zzc
  extends zza
{
  private WeakReference<ImageManager.OnImageLoadedListener> zzOK;
  
  public zza$zzc(ImageManager.OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri)
  {
    super(paramUri, 0);
    zzb.zzh(paramOnImageLoadedListener);
    zzOK = new WeakReference(paramOnImageLoadedListener);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzc)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    paramObject = (zzc)paramObject;
    ImageManager.OnImageLoadedListener localOnImageLoadedListener1 = (ImageManager.OnImageLoadedListener)zzOK.get();
    ImageManager.OnImageLoadedListener localOnImageLoadedListener2 = (ImageManager.OnImageLoadedListener)zzOK.get();
    return (localOnImageLoadedListener2 != null) && (localOnImageLoadedListener1 != null) && (zzw.equal(localOnImageLoadedListener2, localOnImageLoadedListener1)) && (zzw.equal(zzOA, zzOA));
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { zzOA });
  }
  
  protected final void zza(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (!paramBoolean2)
    {
      ImageManager.OnImageLoadedListener localOnImageLoadedListener = (ImageManager.OnImageLoadedListener)zzOK.get();
      if (localOnImageLoadedListener != null) {
        localOnImageLoadedListener.onImageLoaded(zzOA.uri, paramDrawable, paramBoolean3);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.zza.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */