package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.zzkj;
import com.google.android.gms.internal.zzkl;
import java.lang.ref.WeakReference;

public final class zza$zzb
  extends zza
{
  private WeakReference<ImageView> zzOJ;
  
  public zza$zzb(ImageView paramImageView, int paramInt)
  {
    super(null, paramInt);
    zzb.zzh(paramImageView);
    zzOJ = new WeakReference(paramImageView);
  }
  
  public zza$zzb(ImageView paramImageView, Uri paramUri)
  {
    super(paramUri, 0);
    zzb.zzh(paramImageView);
    zzOJ = new WeakReference(paramImageView);
  }
  
  private void zza(ImageView paramImageView, Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if ((!paramBoolean2) && (!paramBoolean3)) {}
    for (int i = 1; (i != 0) && ((paramImageView instanceof zzkl)); i = 0)
    {
      int j = ((zzkl)paramImageView).zziK();
      if ((zzOC == 0) || (j != zzOC)) {
        break;
      }
      return;
    }
    paramBoolean1 = zzc(paramBoolean1, paramBoolean2);
    if ((zzOD) && (paramDrawable != null)) {
      paramDrawable = paramDrawable.getConstantState().newDrawable();
    }
    for (;;)
    {
      Object localObject = paramDrawable;
      if (paramBoolean1) {
        localObject = zza(paramImageView.getDrawable(), paramDrawable);
      }
      paramImageView.setImageDrawable((Drawable)localObject);
      if ((paramImageView instanceof zzkl))
      {
        paramDrawable = (zzkl)paramImageView;
        if (!paramBoolean3) {
          break label171;
        }
        paramImageView = zzOA.uri;
        label133:
        paramDrawable.zzi(paramImageView);
        if (i == 0) {
          break label176;
        }
      }
      label171:
      label176:
      for (i = zzOC;; i = 0)
      {
        paramDrawable.zzaE(i);
        if (!paramBoolean1) {
          break;
        }
        ((zzkj)localObject).startTransition(250);
        return;
        paramImageView = null;
        break label133;
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzb)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    Object localObject = (zzb)paramObject;
    paramObject = (ImageView)zzOJ.get();
    localObject = (ImageView)zzOJ.get();
    return (localObject != null) && (paramObject != null) && (zzw.equal(localObject, paramObject));
  }
  
  public final int hashCode()
  {
    return 0;
  }
  
  protected final void zza(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    ImageView localImageView = (ImageView)zzOJ.get();
    if (localImageView != null) {
      zza(localImageView, paramDrawable, paramBoolean1, paramBoolean2, paramBoolean3);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.zza.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */