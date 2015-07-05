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
import apj;
import azo;
import cgb;
import cgc;
import com.snapchat.android.Timber;
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
import oe;
import wz;

public class VideoFilterView
  extends SurfaceView
{
  SurfaceHolder.Callback a = new c((byte)0);
  private Uri b;
  private final azo c;
  private final wz d;
  private int e = 1;
  private TaskExecutor f = null;
  private VideoFilterRenderingTask g = null;
  private float[] h = new ImageTransformationMatrix().rotateLeft();
  private apj i;
  private InputSurface j = null;
  private int k;
  private int l;
  private float m;
  @cgc
  private d n = null;
  
  public VideoFilterView(@cgb Context paramContext)
  {
    this(paramContext, new azo(), wz.a());
  }
  
  public VideoFilterView(@cgb Context paramContext, @cgc AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0, new azo(), wz.a());
  }
  
  public VideoFilterView(@cgb Context paramContext, @cgc AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, new azo(), wz.a());
  }
  
  private VideoFilterView(@cgb Context paramContext, @cgc AttributeSet paramAttributeSet, int paramInt, @cgb azo paramazo, @cgb wz paramwz)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c = paramazo;
    d = paramwz;
    c();
  }
  
  private VideoFilterView(@cgb Context paramContext, @cgb azo paramazo, @cgb wz paramwz)
  {
    super(paramContext);
    c = paramazo;
    d = paramwz;
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
    if (g != null)
    {
      Timber.c("VideoFilterView", "Trying to stop playback", new Object[0]);
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
          Timber.c("VideoFilterView", "Waiting for abort", new Object[0]);
          g.waitForAbort();
          Timber.c("VideoFilterView", "Abort finished", new Object[0]);
          g = null;
          Timber.c("VideoFilterView", "Playback has been stopped", new Object[0]);
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          c.b(new oe(localInterruptedException.getMessage()));
          throw new RuntimeException("Could not release all components for video rendering! Error " + localInterruptedException.getMessage());
        }
        localTranscodingException = localTranscodingException;
        Timber.f("VideoFilterView", localTranscodingException.toString(), new Object[] { localTranscodingException });
        c.b(new oe(localTranscodingException.getMessage()));
      }
    }
  }
  
  public final boolean a(@cgb Uri paramUri, @cgb float[] paramArrayOfFloat)
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
          Timber.c("VideoFilterView", "Setting resolution = " + i1 + " x " + i2, new Object[0]);
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
      Timber.f("VideoFilterView", paramUri.getMessage(), new Object[0]);
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
        VideoFilterView.b(VideoFilterView.this).execute(VideoFilterView.a(VideoFilterView.this), new VideoFilterView.b(VideoFilterView.this, (byte)0), new VideoFilterView.a(VideoFilterView.this, (byte)0));
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
  
  public void setSwipeVideoViewController(apj paramapj)
  {
    i = paramapj;
  }
  
  public void setUnrecoverableErrorListener(@cgc d paramd)
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
        apj localapj = VideoFilterView.f(VideoFilterView.this);
        a = VideoFilterView.a(VideoFilterView.this);
        localapj.a();
        b = false;
      }
      Timber.c("VideoFilterView", "Rendering is " + Integer.toString(paramInt) + "% complete", new Object[0]);
    }
  }
  
  final class b
    implements Task.DoneCallback
  {
    private b() {}
    
    public final void done(Task.Status paramStatus)
    {
      if (paramStatus == Task.Status.FINISHED)
      {
        Timber.c("VideoFilterView", "Video Rendering finished successfully", new Object[0]);
        return;
      }
      Timber.f("VideoFilterView", "Video rendering is done with error status: " + paramStatus, new Object[0]);
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
          Timber.f("VideoFilterView", "Failed to open video: " + paramSurfaceHolder.toString(), new Object[0]);
          a();
          VideoFilterView.d(VideoFilterView.this);
        } while (VideoFilterView.e(VideoFilterView.this) == null);
        VideoFilterView.e(VideoFilterView.this).h();
      }
    }
    
    public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
    {
      Timber.c("VideoFilterView", "Surface destroyed!", new Object[0]);
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