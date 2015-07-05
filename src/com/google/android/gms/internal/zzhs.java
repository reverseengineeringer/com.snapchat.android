package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@zzgi
public class zzhs
{
  private final Context mContext;
  private int mState = 0;
  private final float zztH;
  private String zzzv;
  private float zzzw;
  private float zzzx;
  private float zzzy;
  
  public zzhs(Context paramContext)
  {
    mContext = paramContext;
    zztH = getResourcesgetDisplayMetricsdensity;
  }
  
  public zzhs(Context paramContext, String paramString)
  {
    this(paramContext);
    zzzv = paramString;
  }
  
  private void showDialog()
  {
    if (!(mContext instanceof Activity))
    {
      zzhx.zzaa("Can not create dialog without Activity Context");
      return;
    }
    Object localObject2;
    final Object localObject1;
    if (!TextUtils.isEmpty(zzzv))
    {
      localObject2 = new Uri.Builder().encodedQuery(zzzv).build();
      localObject1 = new StringBuilder();
      localObject2 = zzab.zzaM().zzd((Uri)localObject2);
      Iterator localIterator = ((Map)localObject2).keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((StringBuilder)localObject1).append(str).append(" = ").append((String)((Map)localObject2).get(str)).append("\n\n");
      }
      localObject1 = ((StringBuilder)localObject1).toString().trim();
      if (TextUtils.isEmpty((CharSequence)localObject1)) {}
    }
    for (;;)
    {
      localObject2 = new AlertDialog.Builder(mContext);
      ((AlertDialog.Builder)localObject2).setMessage((CharSequence)localObject1);
      ((AlertDialog.Builder)localObject2).setTitle("Ad Information");
      ((AlertDialog.Builder)localObject2).setPositiveButton("Share", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          zzhs.zza(zzhs.this).startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", localObject1), "Share via"));
        }
      });
      ((AlertDialog.Builder)localObject2).setNegativeButton("Close", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
      });
      ((AlertDialog.Builder)localObject2).create().show();
      return;
      localObject1 = "No debug information";
      continue;
      localObject1 = "No debug information";
    }
  }
  
  public void zzV(String paramString)
  {
    zzzv = paramString;
  }
  
  void zza(int paramInt, float paramFloat1, float paramFloat2)
  {
    if (paramInt == 0)
    {
      mState = 0;
      zzzw = paramFloat1;
      zzzx = paramFloat2;
      zzzy = paramFloat2;
    }
    label24:
    label224:
    do
    {
      do
      {
        break label24;
        do
        {
          return;
        } while (mState == -1);
        if (paramInt != 2) {
          break;
        }
        if (paramFloat2 > zzzx) {
          zzzx = paramFloat2;
        }
        while (zzzx - zzzy > 30.0F * zztH)
        {
          mState = -1;
          return;
          if (paramFloat2 < zzzy) {
            zzzy = paramFloat2;
          }
        }
        if ((mState == 0) || (mState == 2)) {
          if (paramFloat1 - zzzw >= 50.0F * zztH) {
            zzzw = paramFloat1;
          }
        }
        for (mState += 1;; mState += 1)
        {
          do
          {
            if ((mState != 1) && (mState != 3)) {
              break label224;
            }
            if (paramFloat1 <= zzzw) {
              break;
            }
            zzzw = paramFloat1;
            return;
          } while (((mState != 1) && (mState != 3)) || (paramFloat1 - zzzw > -50.0F * zztH));
          zzzw = paramFloat1;
        }
      } while ((mState != 2) || (paramFloat1 >= zzzw));
      zzzw = paramFloat1;
      return;
    } while ((paramInt != 1) || (mState != 4));
    showDialog();
  }
  
  public void zzc(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getHistorySize();
    int i = 0;
    while (i < j)
    {
      zza(paramMotionEvent.getActionMasked(), paramMotionEvent.getHistoricalX(0, i), paramMotionEvent.getHistoricalY(0, i));
      i += 1;
    }
    zza(paramMotionEvent.getActionMasked(), paramMotionEvent.getX(), paramMotionEvent.getY());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */