package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import android.widget.VideoView;
import apv;
import awj;
import java.io.IOException;
import java.util.Map;

public class TextureVideoView
  extends TextureView
  implements MediaController.MediaPlayerControl
{
  private boolean A;
  private boolean B;
  private boolean C;
  private boolean D = true;
  private MediaPlayer.OnCompletionListener E = new MediaPlayer.OnCompletionListener()
  {
    public final void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      if (!TextureVideoView.j(TextureVideoView.this)) {}
      do
      {
        return;
        TextureVideoView.a(TextureVideoView.this, 5);
        TextureVideoView.b(TextureVideoView.this, 5);
        if (TextureVideoView.g(TextureVideoView.this) != null) {
          TextureVideoView.g(TextureVideoView.this).hide();
        }
      } while (TextureVideoView.k(TextureVideoView.this) == null);
      TextureVideoView.k(TextureVideoView.this).onCompletion(TextureVideoView.f(TextureVideoView.this));
    }
  };
  private MediaPlayer.OnSeekCompleteListener F = new MediaPlayer.OnSeekCompleteListener()
  {
    public final void onSeekComplete(MediaPlayer paramAnonymousMediaPlayer)
    {
      if (TextureVideoView.l(TextureVideoView.this) != null) {
        TextureVideoView.l(TextureVideoView.this).onSeekComplete(paramAnonymousMediaPlayer);
      }
    }
  };
  private MediaPlayer.OnInfoListener G = new MediaPlayer.OnInfoListener()
  {
    public final boolean onInfo(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (TextureVideoView.m(TextureVideoView.this) != null) {
        TextureVideoView.m(TextureVideoView.this).onInfo(paramAnonymousMediaPlayer, paramAnonymousInt1, paramAnonymousInt2);
      }
      return true;
    }
  };
  private MediaPlayer.OnErrorListener H = new MediaPlayer.OnErrorListener()
  {
    public final boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (TextureVideoView.f(TextureVideoView.this) == null) {}
      do
      {
        return true;
        TextureVideoView.a(TextureVideoView.this, -1);
        TextureVideoView.b(TextureVideoView.this, -1);
        if (TextureVideoView.g(TextureVideoView.this) != null) {
          TextureVideoView.g(TextureVideoView.this).hide();
        }
      } while ((TextureVideoView.n(TextureVideoView.this) == null) || (!TextureVideoView.n(TextureVideoView.this).onError(TextureVideoView.f(TextureVideoView.this), paramAnonymousInt1, paramAnonymousInt2)));
      return true;
    }
  };
  private MediaPlayer.OnBufferingUpdateListener I = new MediaPlayer.OnBufferingUpdateListener()
  {
    public final void onBufferingUpdate(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt)
    {
      TextureVideoView.c(TextureVideoView.this, paramAnonymousInt);
    }
  };
  private TextureView.SurfaceTextureListener J = new TextureView.SurfaceTextureListener()
  {
    public final void onSurfaceTextureAvailable(SurfaceTexture paramAnonymousSurfaceTexture, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      TextureVideoView.o(TextureVideoView.this);
    }
    
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture paramAnonymousSurfaceTexture)
    {
      if (TextureVideoView.g(TextureVideoView.this) != null) {
        TextureVideoView.g(TextureVideoView.this).hide();
      }
      TextureVideoView.p(TextureVideoView.this);
      return false;
    }
    
    public final void onSurfaceTextureSizeChanged(SurfaceTexture paramAnonymousSurfaceTexture, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      int j = 1;
      TextureVideoView.d(TextureVideoView.this, paramAnonymousInt1);
      TextureVideoView.e(TextureVideoView.this, paramAnonymousInt2);
      int i;
      if (TextureVideoView.i(TextureVideoView.this) == 3)
      {
        i = 1;
        if ((a != paramAnonymousInt1) || (b != paramAnonymousInt2)) {
          break label117;
        }
      }
      label117:
      for (paramAnonymousInt1 = j;; paramAnonymousInt1 = 0)
      {
        if ((TextureVideoView.f(TextureVideoView.this) != null) && (i != 0) && (paramAnonymousInt1 != 0))
        {
          if (TextureVideoView.h(TextureVideoView.this) != 0) {
            seekTo(TextureVideoView.h(TextureVideoView.this));
          }
          start();
        }
        return;
        i = 0;
        break;
      }
    }
    
    public final void onSurfaceTextureUpdated(SurfaceTexture paramAnonymousSurfaceTexture) {}
  };
  protected int a;
  protected int b;
  protected int c;
  protected int d;
  protected int e;
  protected int f;
  MediaPlayer.OnVideoSizeChangedListener g = new MediaPlayer.OnVideoSizeChangedListener()
  {
    public final void onVideoSizeChanged(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      TextureVideoView.a(TextureVideoView.this, paramAnonymousMediaPlayer);
      if ((a != 0) && (b != 0)) {
        requestLayout();
      }
    }
  };
  MediaPlayer.OnPreparedListener h = new MediaPlayer.OnPreparedListener()
  {
    public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      if (TextureVideoView.a(TextureVideoView.this) != 1) {}
      label228:
      do
      {
        int i;
        do
        {
          do
          {
            return;
            TextureVideoView.a(TextureVideoView.this, 2);
            TextureVideoView.b(TextureVideoView.this);
            TextureVideoView.c(TextureVideoView.this);
            TextureVideoView.d(TextureVideoView.this);
            if (TextureVideoView.e(TextureVideoView.this) != null) {
              TextureVideoView.e(TextureVideoView.this).onPrepared(TextureVideoView.f(TextureVideoView.this));
            }
            if (TextureVideoView.g(TextureVideoView.this) != null) {
              TextureVideoView.g(TextureVideoView.this).setEnabled(true);
            }
            TextureVideoView.a(TextureVideoView.this, paramAnonymousMediaPlayer);
            i = TextureVideoView.h(TextureVideoView.this);
            if (i != 0) {
              seekTo(i);
            }
            if ((a == 0) || (b == 0)) {
              break label228;
            }
            if (TextureVideoView.i(TextureVideoView.this) != 3) {
              break;
            }
            start();
          } while (TextureVideoView.g(TextureVideoView.this) == null);
          TextureVideoView.g(TextureVideoView.this).show();
          return;
        } while ((isPlaying()) || ((i == 0) && (getCurrentPosition() <= 0)) || (TextureVideoView.g(TextureVideoView.this) == null));
        TextureVideoView.g(TextureVideoView.this).show(0);
        return;
      } while (TextureVideoView.i(TextureVideoView.this) != 3);
      start();
    }
  };
  private String i = "TextureVideoView";
  private Uri j;
  private Map<String, String> k;
  private int l = 0;
  private int m = 0;
  private MediaPlayer n = null;
  private int o;
  private int p;
  private int q;
  private Surface r;
  private MediaController s;
  private MediaPlayer.OnCompletionListener t;
  private MediaPlayer.OnSeekCompleteListener u;
  private MediaPlayer.OnPreparedListener v;
  private int w;
  private MediaPlayer.OnErrorListener x;
  private MediaPlayer.OnInfoListener y;
  private int z;
  
  public TextureVideoView(Context paramContext)
  {
    super(paramContext);
    c();
  }
  
  public TextureVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    c();
  }
  
  public TextureVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c();
  }
  
  private void a(boolean paramBoolean)
  {
    if (n != null)
    {
      n.reset();
      n.release();
      n = null;
      l = 0;
      if (paramBoolean) {
        m = 0;
      }
    }
    if (r != null)
    {
      r.release();
      r = null;
    }
  }
  
  private void c()
  {
    a = 0;
    b = 0;
    setSurfaceTextureListener(J);
    setFocusable(true);
    setFocusableInTouchMode(true);
    requestFocus();
    l = 0;
    m = 0;
  }
  
  private void d()
  {
    if ((j == null) || (getSurfaceTexture() == null)) {
      return;
    }
    ((AudioManager)getContext().getSystemService("audio")).requestAudioFocus(null, 3, 1);
    a(false);
    for (;;)
    {
      try
      {
        if (D)
        {
          n = new apv();
          if (o == 0) {
            break label315;
          }
          n.setAudioSessionId(o);
          n.setOnPreparedListener(h);
          n.setOnVideoSizeChangedListener(g);
          n.setOnCompletionListener(E);
          n.setOnSeekCompleteListener(F);
          n.setOnErrorListener(H);
          n.setOnInfoListener(G);
          n.setOnBufferingUpdateListener(I);
          w = 0;
          n.setDataSource(getContext(), j, k);
          r = new Surface(getSurfaceTexture());
          n.setSurface(r);
          n.setAudioStreamType(3);
          n.setScreenOnWhilePlaying(true);
          n.prepareAsync();
          l = 1;
          e();
        }
      }
      catch (IOException localIOException)
      {
        Uri localUri1 = j;
        l = -1;
        m = -1;
        H.onError(n, 1, 0);
        return;
        n = new MediaPlayer();
        continue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Uri localUri2 = j;
        l = -1;
        m = -1;
        H.onError(n, 1, 0);
        return;
      }
      label315:
      o = n.getAudioSessionId();
    }
  }
  
  private void e()
  {
    if ((n != null) && (s != null)) {
      if (!(getParent() instanceof View)) {
        break label52;
      }
    }
    label52:
    for (Object localObject = (View)getParent();; localObject = this)
    {
      s.setAnchorView((View)localObject);
      s.setEnabled(g());
      return;
    }
  }
  
  private void f()
  {
    if (s.isShowing())
    {
      s.hide();
      return;
    }
    s.show();
  }
  
  private boolean g()
  {
    return (n != null) && (l != -1) && (l != 0) && (l != 1);
  }
  
  protected Matrix a(int paramInt)
  {
    return null;
  }
  
  @awj
  public final void a()
  {
    if (n != null)
    {
      n.stop();
      n.release();
      n = null;
      l = 0;
      m = 0;
    }
    if (r != null)
    {
      r.release();
      r = null;
    }
  }
  
  @awj
  public final void b()
  {
    a();
    j = null;
  }
  
  public boolean canPause()
  {
    return A;
  }
  
  public boolean canSeekBackward()
  {
    return B;
  }
  
  public boolean canSeekForward()
  {
    return C;
  }
  
  public int getAudioSessionId()
  {
    if (o == 0)
    {
      MediaPlayer localMediaPlayer = new MediaPlayer();
      o = localMediaPlayer.getAudioSessionId();
      localMediaPlayer.release();
    }
    return o;
  }
  
  public int getBufferPercentage()
  {
    if (n != null) {
      return w;
    }
    return 0;
  }
  
  public int getCurrentPosition()
  {
    if (g()) {
      return n.getCurrentPosition();
    }
    return 0;
  }
  
  public int getDuration()
  {
    if (g()) {
      return n.getDuration();
    }
    return -1;
  }
  
  public Uri getVideoURI()
  {
    return j;
  }
  
  public boolean isPlaying()
  {
    return (g()) && (n.isPlaying());
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(VideoView.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(VideoView.class.getName());
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    int i1;
    if ((paramInt != 4) && (paramInt != 24) && (paramInt != 25) && (paramInt != 164) && (paramInt != 82) && (paramInt != 5) && (paramInt != 6))
    {
      i1 = 1;
      if ((!g()) || (i1 == 0) || (s == null)) {
        break label182;
      }
      if ((paramInt != 79) && (paramInt != 85)) {
        break label114;
      }
      if (!n.isPlaying()) {
        break label101;
      }
      pause();
      s.show();
    }
    label101:
    label114:
    label143:
    do
    {
      do
      {
        return true;
        i1 = 0;
        break;
        start();
        s.hide();
        return true;
        if (paramInt != 126) {
          break label143;
        }
      } while (n.isPlaying());
      start();
      s.hide();
      return true;
      if ((paramInt != 86) && (paramInt != 127)) {
        break label178;
      }
    } while (!n.isPlaying());
    pause();
    s.show();
    return true;
    label178:
    f();
    label182:
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = getDefaultSize(a, paramInt1);
    int i4 = getDefaultSize(b, paramInt2);
    int i1 = i4;
    int i2 = i3;
    if (a > 0)
    {
      i1 = i4;
      i2 = i3;
      if (b > 0)
      {
        i2 = View.MeasureSpec.getMode(paramInt1);
        i3 = View.MeasureSpec.getSize(paramInt1);
        i4 = View.MeasureSpec.getMode(paramInt2);
        paramInt1 = View.MeasureSpec.getSize(paramInt2);
        if ((i2 != 1073741824) || (i4 != 1073741824)) {
          break label172;
        }
        if (a * paramInt1 >= b * i3) {
          break label130;
        }
        i2 = a * paramInt1 / b;
        i1 = paramInt1;
      }
    }
    for (;;)
    {
      setMeasuredDimension(i2, Math.max(1, i1));
      return;
      label130:
      i1 = paramInt1;
      i2 = i3;
      if (a * paramInt1 > b * i3)
      {
        i1 = b * i3 / a;
        i2 = i3;
        continue;
        label172:
        if (i2 == 1073741824)
        {
          paramInt2 = b * i3 / a;
          if (i4 == Integer.MIN_VALUE)
          {
            i1 = paramInt1;
            i2 = i3;
            if (paramInt2 > paramInt1) {}
          }
          else
          {
            i1 = paramInt2;
            i2 = i3;
          }
        }
        else
        {
          if (i4 != 1073741824) {
            break;
          }
          paramInt2 = a * paramInt1 / b;
          if (i2 == Integer.MIN_VALUE)
          {
            i1 = paramInt1;
            i2 = i3;
            if (paramInt2 > i3) {}
          }
          else
          {
            i2 = paramInt2;
            i1 = paramInt1;
          }
        }
      }
    }
    paramInt2 = a;
    i1 = b;
    if ((i4 == Integer.MIN_VALUE) && (i1 > paramInt1)) {
      paramInt2 = a * paramInt1 / b;
    }
    for (;;)
    {
      if ((i2 == Integer.MIN_VALUE) && (paramInt2 > i3))
      {
        paramInt1 = b * i3 / a;
        paramInt2 = i3;
      }
      for (;;)
      {
        Math.max(1, paramInt1);
        Matrix localMatrix = a(paramInt2);
        i1 = paramInt1;
        i2 = paramInt2;
        if (localMatrix == null) {
          break;
        }
        setTransform(localMatrix);
        i1 = paramInt1;
        i2 = paramInt2;
        break;
      }
      paramInt1 = i1;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((g()) && (s != null)) {
      f();
    }
    return false;
  }
  
  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    if ((g()) && (s != null)) {
      f();
    }
    return false;
  }
  
  public void pause()
  {
    if ((g()) && (n.isPlaying()))
    {
      n.pause();
      l = 4;
    }
    m = 4;
  }
  
  public void seekTo(int paramInt)
  {
    if (g())
    {
      n.seekTo(paramInt);
      z = 0;
      return;
    }
    z = paramInt;
  }
  
  public void setLooping(boolean paramBoolean)
  {
    if (n != null) {
      n.setLooping(paramBoolean);
    }
  }
  
  public void setMediaController(MediaController paramMediaController)
  {
    if (s != null) {
      s.hide();
    }
    s = paramMediaController;
    e();
  }
  
  public void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    t = paramOnCompletionListener;
  }
  
  public void setOnErrorListener(MediaPlayer.OnErrorListener paramOnErrorListener)
  {
    x = paramOnErrorListener;
  }
  
  public void setOnInfoListener(MediaPlayer.OnInfoListener paramOnInfoListener)
  {
    y = paramOnInfoListener;
  }
  
  public void setOnPreparedListener(MediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    v = paramOnPreparedListener;
  }
  
  public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener paramOnSeekCompleteListener)
  {
    u = paramOnSeekCompleteListener;
  }
  
  public void setShouldUseAsyncMediaPlayer(boolean paramBoolean)
  {
    D = paramBoolean;
  }
  
  public void setVideoPath(String paramString)
  {
    if (paramString != null) {
      setVideoURI(Uri.parse(paramString));
    }
  }
  
  public void setVideoURI(Uri paramUri)
  {
    setVideoURI(paramUri, null);
  }
  
  @awj
  public void setVideoURI(Uri paramUri, Map<String, String> paramMap)
  {
    j = paramUri;
    k = paramMap;
    z = 0;
    d();
    requestLayout();
    invalidate();
  }
  
  public void setViewport(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c = paramInt1;
    d = paramInt2;
    e = paramInt3;
    f = paramInt4;
  }
  
  public void start()
  {
    if (g())
    {
      n.start();
      l = 3;
    }
    m = 3;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.TextureVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */