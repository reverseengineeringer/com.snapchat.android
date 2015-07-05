package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.zzkj;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzkl;
import com.google.android.gms.internal.zzkm;
import com.google.android.gms.internal.zzkm.zza;
import java.lang.ref.WeakReference;

public abstract class zza
{
  final zza zzOA;
  protected int zzOB = 0;
  protected int zzOC = 0;
  protected boolean zzOD = false;
  protected ImageManager.OnImageLoadedListener zzOE;
  private boolean zzOF = true;
  private boolean zzOG = false;
  private boolean zzOH = true;
  protected int zzOI;
  
  public zza(Uri paramUri, int paramInt)
  {
    zzOA = new zza(paramUri);
    zzOC = paramInt;
  }
  
  private Drawable zza(Context paramContext, zzkm paramzzkm, int paramInt)
  {
    Resources localResources = paramContext.getResources();
    if (zzOI > 0)
    {
      zzkm.zza localzza = new zzkm.zza(paramInt, zzOI);
      Drawable localDrawable = (Drawable)paramzzkm.get(localzza);
      paramContext = localDrawable;
      if (localDrawable == null)
      {
        localDrawable = localResources.getDrawable(paramInt);
        paramContext = localDrawable;
        if ((zzOI & 0x1) != 0) {
          paramContext = zza(localResources, localDrawable);
        }
        paramzzkm.put(localzza, paramContext);
      }
      return paramContext;
    }
    return localResources.getDrawable(paramInt);
  }
  
  protected Drawable zza(Resources paramResources, Drawable paramDrawable)
  {
    return zzkk.zza(paramResources, paramDrawable);
  }
  
  protected zzkj zza(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    if (paramDrawable1 != null)
    {
      localDrawable = paramDrawable1;
      if (!(paramDrawable1 instanceof zzkj)) {}
    }
    for (Drawable localDrawable = ((zzkj)paramDrawable1).zziI();; localDrawable = null) {
      return new zzkj(localDrawable, paramDrawable2);
    }
  }
  
  void zza(Context paramContext, Bitmap paramBitmap, boolean paramBoolean)
  {
    zzb.zzh(paramBitmap);
    Bitmap localBitmap = paramBitmap;
    if ((zzOI & 0x1) != 0) {
      localBitmap = zzkk.zza(paramBitmap);
    }
    paramContext = new BitmapDrawable(paramContext.getResources(), localBitmap);
    if (zzOE != null) {
      zzOE.onImageLoaded(zzOA.uri, paramContext, true);
    }
    zza(paramContext, paramBoolean, false, true);
  }
  
  void zza(Context paramContext, zzkm paramzzkm)
  {
    if (zzOH)
    {
      Drawable localDrawable = null;
      if (zzOB != 0) {
        localDrawable = zza(paramContext, paramzzkm, zzOB);
      }
      zza(localDrawable, false, true, false);
    }
  }
  
  void zza(Context paramContext, zzkm paramzzkm, boolean paramBoolean)
  {
    Drawable localDrawable = null;
    if (zzOC != 0) {
      localDrawable = zza(paramContext, paramzzkm, zzOC);
    }
    if (zzOE != null) {
      zzOE.onImageLoaded(zzOA.uri, localDrawable, false);
    }
    zza(localDrawable, paramBoolean, false, false);
  }
  
  protected abstract void zza(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
  
  public void zzaC(int paramInt)
  {
    zzOC = paramInt;
  }
  
  protected boolean zzc(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (zzOF) && (!paramBoolean2) && ((!paramBoolean1) || (zzOG));
  }
  
  static final class zza
  {
    public final Uri uri;
    
    public zza(Uri paramUri)
    {
      uri = paramUri;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof zza)) {
        return false;
      }
      if (this == paramObject) {
        return true;
      }
      return zzw.equal(uri, uri);
    }
    
    public final int hashCode()
    {
      return zzw.hashCode(new Object[] { uri });
    }
  }
  
  public static final class zzb
    extends zza
  {
    private WeakReference<ImageView> zzOJ;
    
    public zzb(ImageView paramImageView, int paramInt)
    {
      super(paramInt);
      zzb.zzh(paramImageView);
      zzOJ = new WeakReference(paramImageView);
    }
    
    public zzb(ImageView paramImageView, Uri paramUri)
    {
      super(0);
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
  
  public static final class zzc
    extends zza
  {
    private WeakReference<ImageManager.OnImageLoadedListener> zzOK;
    
    public zzc(ImageManager.OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri)
    {
      super(0);
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */