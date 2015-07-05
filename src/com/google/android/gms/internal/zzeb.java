package com.google.android.gms.internal;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.android.gms.ads.AdSize;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@zzgi
public class zzeb
  extends zzeg
{
  static final Set<String> zztg = new HashSet(Arrays.asList(new String[] { "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center" }));
  private int zzli = -1;
  private int zzlj = -1;
  private final zzic zzmu;
  private final Object zznh = new Object();
  private zzba zzsF;
  private String zzth = "top-right";
  private boolean zzti = true;
  private int zztj = 0;
  private int zztk = 0;
  private int zztl = 0;
  private int zztm = 0;
  private final Activity zztn;
  private ImageView zzto;
  private LinearLayout zztp;
  private zzeh zztq;
  private PopupWindow zztr;
  private RelativeLayout zzts;
  private ViewGroup zztt;
  
  public zzeb(zzic paramzzic, zzeh paramzzeh)
  {
    super(paramzzic, "resize");
    zzmu = paramzzic;
    zztn = paramzzic.zzeD();
    zztq = paramzzeh;
  }
  
  private int[] zzcO()
  {
    if (!zzcQ()) {
      return null;
    }
    if (zzti) {
      return new int[] { zztj + zztl, zztk + zztm };
    }
    int[] arrayOfInt1 = zzab.zzaM().zzh(zztn);
    int[] arrayOfInt2 = zzab.zzaM().zzj(zztn);
    int m = arrayOfInt1[0];
    int j = zztj + zztl;
    int k = zztk + zztm;
    int i;
    if (j < 0)
    {
      i = 0;
      if (k >= arrayOfInt2[0]) {
        break label149;
      }
      j = arrayOfInt2[0];
    }
    for (;;)
    {
      return new int[] { i, j };
      i = j;
      if (zzli + j <= m) {
        break;
      }
      i = m - zzli;
      break;
      label149:
      j = k;
      if (zzlj + k > arrayOfInt2[1]) {
        j = arrayOfInt2[1] - zzlj;
      }
    }
  }
  
  private void zzf(Map<String, String> paramMap)
  {
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("width"))) {
      zzli = zzab.zzaM().zzT((String)paramMap.get("width"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("height"))) {
      zzlj = zzab.zzaM().zzT((String)paramMap.get("height"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("offsetX"))) {
      zztl = zzab.zzaM().zzT((String)paramMap.get("offsetX"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("offsetY"))) {
      zztm = zzab.zzaM().zzT((String)paramMap.get("offsetY"));
    }
    if (!TextUtils.isEmpty((CharSequence)paramMap.get("allowOffscreen"))) {
      zzti = Boolean.parseBoolean((String)paramMap.get("allowOffscreen"));
    }
    paramMap = (String)paramMap.get("customClosePosition");
    if (!TextUtils.isEmpty(paramMap)) {
      zzth = paramMap;
    }
  }
  
  public void zzb(int paramInt1, int paramInt2)
  {
    synchronized (zznh)
    {
      zztj = paramInt1;
      zztk = paramInt2;
      if (zztr != null)
      {
        int[] arrayOfInt = zzcO();
        if (arrayOfInt != null)
        {
          zztr.update(zzbe.zzbD().zzb(zztn, arrayOfInt[0]), zzbe.zzbD().zzb(zztn, arrayOfInt[1]), zztr.getWidth(), zztr.getHeight());
          zzd(arrayOfInt[0], arrayOfInt[1]);
        }
      }
      else
      {
        return;
      }
      zzm(true);
    }
  }
  
  void zzc(int paramInt1, int paramInt2)
  {
    if (zztq != null) {
      zztq.zza(paramInt1, paramInt2, zzli, zzlj);
    }
  }
  
  boolean zzcN()
  {
    return (zzli >= 0) && (zzlj >= 0);
  }
  
  public boolean zzcP()
  {
    for (;;)
    {
      synchronized (zznh)
      {
        if (zztr != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  boolean zzcQ()
  {
    Object localObject = zzab.zzaM().zzh(zztn);
    int[] arrayOfInt = zzab.zzaM().zzj(zztn);
    int k = localObject[0];
    int i = localObject[1];
    if ((zzli < 50) || (zzli > k))
    {
      zzhx.zzac("Width is too small or too large.");
      return false;
    }
    if ((zzlj < 50) || (zzlj > i))
    {
      zzhx.zzac("Height is too small or too large.");
      return false;
    }
    if ((zzlj == i) && (zzli == k))
    {
      zzhx.zzac("Cannot resize to a full-screen ad.");
      return false;
    }
    label184:
    int j;
    if (zzti)
    {
      localObject = zzth;
      i = -1;
      switch (((String)localObject).hashCode())
      {
      default: 
        switch (i)
        {
        default: 
          j = zztj + zztl + zzli - 50;
          i = zztk + zztm;
        }
        break;
      }
    }
    while ((j >= 0) && (j + 50 <= k) && (i >= arrayOfInt[0]) && (i + 50 <= arrayOfInt[1]))
    {
      return true;
      if (!((String)localObject).equals("top-left")) {
        break label184;
      }
      i = 0;
      break label184;
      if (!((String)localObject).equals("top-center")) {
        break label184;
      }
      i = 1;
      break label184;
      if (!((String)localObject).equals("center")) {
        break label184;
      }
      i = 2;
      break label184;
      if (!((String)localObject).equals("bottom-left")) {
        break label184;
      }
      i = 3;
      break label184;
      if (!((String)localObject).equals("bottom-center")) {
        break label184;
      }
      i = 4;
      break label184;
      if (!((String)localObject).equals("bottom-right")) {
        break label184;
      }
      i = 5;
      break label184;
      i = zztj;
      j = zztl + i;
      i = zztk + zztm;
      continue;
      j = zztj + zztl + zzli / 2 - 25;
      i = zztk + zztm;
      continue;
      j = zztj + zztl + zzli / 2 - 25;
      i = zztk + zztm + zzlj / 2 - 25;
      continue;
      i = zztj;
      j = zztl + i;
      i = zztk + zztm + zzlj - 50;
      continue;
      j = zztj + zztl + zzli / 2 - 25;
      i = zztk + zztm + zzlj - 50;
      continue;
      j = zztj + zztl + zzli - 50;
      i = zztk + zztm + zzlj - 50;
    }
  }
  
  void zzd(int paramInt1, int paramInt2)
  {
    zzb(paramInt1, paramInt2 - zzab.zzaM().zzj(zztn)[0], zzli, zzlj);
  }
  
  public void zze(int paramInt1, int paramInt2)
  {
    zztj = paramInt1;
    zztk = paramInt2;
  }
  
  public void zzg(Map<String, String> paramMap)
  {
    synchronized (zznh)
    {
      if (zztn == null)
      {
        zzH("Not an activity context. Cannot resize.");
        return;
      }
      if (zzmu.zzad() == null)
      {
        zzH("Webview is not yet available, size is not set.");
        return;
      }
    }
    if (zzmu.zzad().zzpb)
    {
      zzH("Is interstitial. Cannot resize an interstitial.");
      return;
    }
    if (zzmu.zzeK())
    {
      zzH("Cannot resize an expanded banner.");
      return;
    }
    zzf(paramMap);
    if (!zzcN())
    {
      zzH("Invalid width and height options. Cannot resize.");
      return;
    }
    paramMap = zztn.getWindow();
    if ((paramMap == null) || (paramMap.getDecorView() == null))
    {
      zzH("Activity context is not ready, cannot get window or decor view.");
      return;
    }
    int[] arrayOfInt = zzcO();
    if (arrayOfInt == null)
    {
      zzH("Resize location out of screen or close button is not visible.");
      return;
    }
    int i = zzbe.zzbD().zzb(zztn, zzli);
    int j = zzbe.zzbD().zzb(zztn, zzlj);
    Object localObject2 = zzmu.getWebView().getParent();
    if ((localObject2 != null) && ((localObject2 instanceof ViewGroup)))
    {
      ((ViewGroup)localObject2).removeView(zzmu.getWebView());
      if (zztr == null)
      {
        zztt = ((ViewGroup)localObject2);
        localObject2 = zzab.zzaM().zzh(zzmu.getWebView());
        zzto = new ImageView(zztn);
        zzto.setImageBitmap((Bitmap)localObject2);
        zzsF = zzmu.zzad();
        zztt.addView(zzto);
        zzts = new RelativeLayout(zztn);
        zzts.setBackgroundColor(0);
        zzts.setLayoutParams(new ViewGroup.LayoutParams(i, j));
        zztr = zzab.zzaM().zza(zzts, i, j, false);
        zztr.setOutsideTouchable(true);
        zztr.setTouchable(true);
        localObject2 = zztr;
        if (zzti) {
          break label1067;
        }
      }
    }
    label1020:
    label1024:
    label1026:
    label1067:
    for (boolean bool = true;; bool = false)
    {
      ((PopupWindow)localObject2).setClippingEnabled(bool);
      zzts.addView(zzmu.getWebView(), -1, -1);
      zztp = new LinearLayout(zztn);
      localObject2 = new RelativeLayout.LayoutParams(zzbe.zzbD().zzb(zztn, 50), zzbe.zzbD().zzb(zztn, 50));
      String str = zzth;
      switch (str.hashCode())
      {
      }
      for (;;)
      {
        ((RelativeLayout.LayoutParams)localObject2).addRule(10);
        ((RelativeLayout.LayoutParams)localObject2).addRule(11);
        for (;;)
        {
          zztp.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymousView)
            {
              zzm(true);
            }
          });
          zztp.setContentDescription("Close button");
          zzts.addView(zztp, (ViewGroup.LayoutParams)localObject2);
          try
          {
            zztr.showAtLocation(paramMap.getDecorView(), 0, zzbe.zzbD().zzb(zztn, arrayOfInt[0]), zzbe.zzbD().zzb(zztn, arrayOfInt[1]));
            zzc(arrayOfInt[0], arrayOfInt[1]);
            zzmu.zza(new zzba(zztn, new AdSize(zzli, zzlj)));
            zzd(arrayOfInt[0], arrayOfInt[1]);
            zzJ("resized");
            return;
          }
          catch (RuntimeException paramMap)
          {
            zzH("Cannot show popup window: " + paramMap.getMessage());
            zzts.removeView(zzmu.getWebView());
            if (zztt == null) {
              break label1020;
            }
            zztt.removeView(zzto);
            zztt.addView(zzmu.getWebView());
            zzmu.zza(zzsF);
            return;
          }
          zztr.dismiss();
          break;
          zzH("Webview is detached, probably in the middle of a resize or expand.");
          return;
          if (!str.equals("top-left")) {
            break label1024;
          }
          i = 0;
          break label1026;
          if (!str.equals("top-center")) {
            break label1024;
          }
          i = 1;
          break label1026;
          if (!str.equals("center")) {
            break label1024;
          }
          i = 2;
          break label1026;
          if (!str.equals("bottom-left")) {
            break label1024;
          }
          i = 3;
          break label1026;
          if (!str.equals("bottom-center")) {
            break label1024;
          }
          i = 4;
          break label1026;
          if (!str.equals("bottom-right")) {
            break label1024;
          }
          i = 5;
          break label1026;
          ((RelativeLayout.LayoutParams)localObject2).addRule(10);
          ((RelativeLayout.LayoutParams)localObject2).addRule(9);
          continue;
          ((RelativeLayout.LayoutParams)localObject2).addRule(10);
          ((RelativeLayout.LayoutParams)localObject2).addRule(14);
          continue;
          ((RelativeLayout.LayoutParams)localObject2).addRule(13);
          continue;
          ((RelativeLayout.LayoutParams)localObject2).addRule(12);
          ((RelativeLayout.LayoutParams)localObject2).addRule(9);
          continue;
          ((RelativeLayout.LayoutParams)localObject2).addRule(12);
          ((RelativeLayout.LayoutParams)localObject2).addRule(14);
          continue;
          ((RelativeLayout.LayoutParams)localObject2).addRule(12);
          ((RelativeLayout.LayoutParams)localObject2).addRule(11);
        }
        i = -1;
        switch (i)
        {
        }
      }
    }
  }
  
  public void zzm(boolean paramBoolean)
  {
    synchronized (zznh)
    {
      if (zztr != null)
      {
        zztr.dismiss();
        zzts.removeView(zzmu.getWebView());
        if (zztt != null)
        {
          zztt.removeView(zzto);
          zztt.addView(zzmu.getWebView());
          zzmu.zza(zzsF);
        }
        if (paramBoolean)
        {
          zzJ("default");
          if (zztq != null) {
            zztq.zzam();
          }
        }
        zztr = null;
        zzts = null;
        zztt = null;
        zztp = null;
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzeb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */