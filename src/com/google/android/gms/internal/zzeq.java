package com.google.android.gms.internal;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.VideoView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@zzgi
public class zzeq
  extends FrameLayout
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  private final zzic zzmu;
  private final MediaController zzuA;
  private final zza zzuB;
  private final VideoView zzuC;
  private long zzuD;
  private String zzuE;
  
  public zzeq(Context paramContext, zzic paramzzic)
  {
    super(paramContext);
    zzmu = paramzzic;
    zzuC = new VideoView(paramContext);
    paramzzic = new FrameLayout.LayoutParams(-1, -1, 17);
    addView(zzuC, paramzzic);
    zzuA = new MediaController(paramContext);
    zzuB = new zza(this);
    zzuB.zzdq();
    zzuC.setOnCompletionListener(this);
    zzuC.setOnPreparedListener(this);
    zzuC.setOnErrorListener(this);
  }
  
  private static void zza(zzic paramzzic, String paramString)
  {
    zza(paramzzic, paramString, new HashMap(1));
  }
  
  public static void zza(zzic paramzzic, String paramString1, String paramString2)
  {
    int i;
    if (paramString2 == null)
    {
      i = 1;
      if (i == 0) {
        break label60;
      }
    }
    label60:
    for (int j = 2;; j = 3)
    {
      HashMap localHashMap = new HashMap(j);
      localHashMap.put("what", paramString1);
      if (i == 0) {
        localHashMap.put("extra", paramString2);
      }
      zza(paramzzic, "error", localHashMap);
      return;
      i = 0;
      break;
    }
  }
  
  private static void zza(zzic paramzzic, String paramString1, String paramString2, String paramString3)
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put(paramString2, paramString3);
    zza(paramzzic, paramString1, localHashMap);
  }
  
  private static void zza(zzic paramzzic, String paramString, Map<String, String> paramMap)
  {
    paramMap.put("event", paramString);
    paramzzic.zzb("onVideoEvent", paramMap);
  }
  
  public void destroy()
  {
    zzuB.cancel();
    zzuC.stopPlayback();
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    zza(zzmu, "ended");
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    zza(zzmu, String.valueOf(paramInt1), String.valueOf(paramInt2));
    return true;
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    float f = zzuC.getDuration() / 1000.0F;
    zza(zzmu, "canplaythrough", "duration", String.valueOf(f));
  }
  
  public void pause()
  {
    zzuC.pause();
  }
  
  public void play()
  {
    zzuC.start();
  }
  
  public void seekTo(int paramInt)
  {
    zzuC.seekTo(paramInt);
  }
  
  public void zzK(String paramString)
  {
    zzuE = paramString;
  }
  
  public void zzb(MotionEvent paramMotionEvent)
  {
    zzuC.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void zzdo()
  {
    if (!TextUtils.isEmpty(zzuE))
    {
      zzuC.setVideoPath(zzuE);
      return;
    }
    zza(zzmu, "no_src", null);
  }
  
  public void zzdp()
  {
    long l = zzuC.getCurrentPosition();
    if (zzuD != l)
    {
      float f = (float)l / 1000.0F;
      zza(zzmu, "timeupdate", "time", String.valueOf(f));
      zzuD = l;
    }
  }
  
  public void zzu(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      zzuC.setMediaController(zzuA);
      return;
    }
    zzuA.hide();
    zzuC.setMediaController(null);
  }
  
  static final class zza
  {
    private final Runnable zzmG;
    private volatile boolean zzuF = false;
    
    public zza(final zzeq paramzzeq)
    {
      zzmG = new Runnable()
      {
        private final WeakReference<zzeq> zzuG = new WeakReference(paramzzeq);
        
        public void run()
        {
          zzeq localzzeq = (zzeq)zzuG.get();
          if ((!zzeq.zza.zza(zzeq.zza.this)) && (localzzeq != null))
          {
            localzzeq.zzdp();
            zzdq();
          }
        }
      };
    }
    
    public final void cancel()
    {
      zzuF = true;
      zzhw.zzzG.removeCallbacks(zzmG);
    }
    
    public final void zzdq()
    {
      zzhw.zzzG.postDelayed(zzmG, 250L);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzeq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */