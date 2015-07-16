package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.VideoView;
import aqf;
import ban;
import chc;
import chd;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.task.Task.DoneCallback;
import com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback;
import com.snapchat.videotranscoder.task.Task.Status;
import com.snapchat.videotranscoder.task.TaskExecutor;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.task.VideoFileMediaSource;
import com.snapchat.videotranscoder.task.VideoFileMediaSource.AudioChannelSource;
import com.snapchat.videotranscoder.task.VideoFileMediaSource.VideoChannelSource;
import com.snapchat.videotranscoder.task.VideoFilterRenderingTask;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrix;
import com.snapchat.videotranscoder.utils.VideoMetadataReader;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;
import java.io.File;
import ov;
import xu;

public class VideoFilterView
  extends SurfaceView
{
  SurfaceHolder.Callback a = new c((byte)0);
  private Uri b;
  private final ban c;
  private final xu d;
  private int e = 1;
  private TaskExecutor f = null;
  private VideoFilterRenderingTask g = null;
  private float[] h = new ImageTransformationMatrix().rotateLeft();
  private aqf i;
  private InputSurface j = null;
  private int k;
  private int l;
  private float m;
  @chd
  private d n = null;
  
  public VideoFilterView(@chc Context paramContext)
  {
    this(paramContext, new ban(), xu.a());
  }
  
  public VideoFilterView(@chc Context paramContext, @chd AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0, new ban(), xu.a());
  }
  
  public VideoFilterView(@chc Context paramContext, @chd AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, new ban(), xu.a());
  }
  
  private VideoFilterView(@chc Context paramContext, @chd AttributeSet paramAttributeSet, int paramInt, @chc ban paramban, @chc xu paramxu)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c = paramban;
    d = paramxu;
    c();
  }
  
  private VideoFilterView(@chc Context paramContext, @chc ban paramban, @chc xu paramxu)
  {
    super(paramContext);
    c = paramban;
    d = paramxu;
    c();
  }
  
  private void c()
  {
    k = 0;
    l = 0;
    getHolder().addCallback(a);
    setFocusable(true);
    setFocusableInTouchMode(true);
    requestFocus();
    f = new TaskExecutor();
  }
  
  private void d()
  {
    if ((b == null) || (j == null)) {
      return;
    }
    VideoFileMediaSource localVideoFileMediaSource = new VideoFileMediaSource(b.getPath(), h, null, FragmentShader.Filter.NORMAL, VideoFileMediaSource.VideoChannelSource.ORIGINAL, VideoFileMediaSource.AudioChannelSource.ORIGINAL);
    g = new VideoFilterRenderingTask(d.a, localVideoFileMediaSource, FragmentShader.Filter.NORMAL, FragmentShader.Filter.NORMAL, j);
    g.setVolume(m);
  }
  
  private void setTransformationMatrix(float[] paramArrayOfFloat)
  {
    h = paramArrayOfFloat;
  }
  
  public final void a()
  {
    if (g != null) {
      i.a = null;
    }
    try
    {
      f.tryAbort(g);
    }
    catch (TranscodingException localTranscodingException)
    {
      for (;;)
      {
        try
        {
          g.waitForAbort();
          g = null;
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          c.b(new ov(localInterruptedException.getMessage()));
          throw new RuntimeException("Could not release all components for video rendering! Error " + localInterruptedException.getMessage());
        }
        localTranscodingException = localTranscodingException;
        c.b(new ov(localTranscodingException.getMessage()));
      }
    }
  }
  
  public final boolean a(@chc Uri paramUri, @chc float[] paramArrayOfFloat)
  {
    try
    {
      setTransformationMatrix(paramArrayOfFloat);
      b = paramUri;
      if (b != null) {
        paramUri = new VideoMetadataReader(new File(b.getPath()));
      }
      try
      {
        int i1 = paramUri.getHeight();
        int i2 = paramUri.getWidth();
        paramUri.release();
        if ((i2 > 0) && (i1 > 0))
        {
          float f1 = i2 / i1;
          i1 = getResourcesgetDisplayMetricswidthPixels;
          i2 = (int)(f1 * i1);
          new StringBuilder("Setting resolution = ").append(i1).append(" x ").append(i2);
          k = Math.min(i1, i2);
          l = Math.max(i1, i2);
        }
        d();
        requestLayout();
        return true;
      }
      finally
      {
        paramUri.release();
      }
      return false;
    }
    catch (Exception paramUri)
    {
      paramUri.getMessage();
    }
  }
  
  public final void b()
  {
    if ((e == 2) || (b == null)) {
      return;
    }
    if (g != null) {}
    for (int i1 = 1; i1 == 0; i1 = 0)
    {
      postDelayed(new Runnable()
      {
        public final void run()
        {
          b();
        }
      }, 25L);
      return;
    }
    new Thread(new Runnable()
    {
      public final void run()
      {
        if (VideoFilterView.a(VideoFilterView.this) != null) {
          VideoFilterView.b(VideoFilterView.this).execute(VideoFilterView.a(VideoFilterView.this), new VideoFilterView.b(VideoFilterView.this, (byte)0), new VideoFilterView.a(VideoFilterView.this, (byte)0));
        }
      }
    }).start();
    e = 2;
  }
  
  public VideoFilterRenderingTask getFilterRenderingTask()
  {
    return g;
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
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt1 = getDefaultSize(k, paramInt1);
    paramInt2 = getDefaultSize(l, paramInt2);
    if ((k > 0) && (l > 0))
    {
      setMeasuredDimension(k, l);
      return;
    }
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  public void setSwipeVideoViewController(aqf paramaqf)
  {
    i = paramaqf;
  }
  
  public void setUnrecoverableErrorListener(@chd d paramd)
  {
    n = paramd;
  }
  
  public void setVideoAspect(int paramInt1, int paramInt2)
  {
    k = Math.min(paramInt1, paramInt2);
    l = Math.max(paramInt1, paramInt2);
  }
  
  public void setVolume(float paramFloat)
  {
    m = paramFloat;
    if (g != null) {
      g.setVolume(m);
    }
  }
  
  final class a
    implements Task.ProgressUpdateCallback
  {
    private boolean b = true;
    
    private a() {}
    
    public final void onProgressUpdated(int paramInt)
    {
      if (b)
      {
        aqf localaqf = VideoFilterView.f(VideoFilterView.this);
        a = VideoFilterView.a(VideoFilterView.this);
        localaqf.a();
        b = false;
      }
      new StringBuilder("Rendering is ").append(Integer.toString(paramInt)).append("% complete");
    }
  }
  
  final class b
    implements Task.DoneCallback
  {
    private b() {}
    
    public final void done(Task.Status paramStatus)
    {
      if (paramStatus != Task.Status.FINISHED) {
        new StringBuilder("Video rendering is done with error status: ").append(paramStatus);
      }
    }
  }
  
  final class c
    implements SurfaceHolder.Callback
  {
    private c() {}
    
    public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
    
    public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
    {
      VideoFilterView.a(VideoFilterView.this, new InputSurface(paramSurfaceHolder.getSurface(), false));
      try
      {
        VideoFilterView.c(VideoFilterView.this);
        return;
      }
      catch (SetupException paramSurfaceHolder)
      {
        do
        {
          new StringBuilder("Failed to open video: ").append(paramSurfaceHolder.toString());
          a();
          VideoFilterView.d(VideoFilterView.this);
        } while (VideoFilterView.e(VideoFilterView.this) == null);
        VideoFilterView.e(VideoFilterView.this).h();
      }
    }
    
    public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
    {
      VideoFilterView.d(VideoFilterView.this);
    }
  }
  
  public static abstract interface d
  {
    public abstract void h();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.VideoFilterView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */