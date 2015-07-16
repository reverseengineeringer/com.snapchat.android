package com.snapchat.android.ui.here;

import aih.a;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.hardware.Camera.CameraInfo;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import are;
import avc;
import bbo;
import bbp;
import bpi;
import chc;
import chd;
import com.addlive.service.AddLiveService.VideoFrameMetadata;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.ChatCameraButton.a;
import com.squareup.otto.Bus;

public abstract class StreamView
  extends FrameLayout
  implements aih.a, ChatCameraButton.a
{
  protected static final AddLiveService.VideoFrameMetadata j = new AddLiveService.VideoFrameMetadata();
  protected static final are k = new are();
  
  public StreamView(Context paramContext)
  {
    super(paramContext);
  }
  
  public StreamView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public StreamView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public static StreamView getLastInstance()
  {
    return null;
  }
  
  public static void setCameraInfo(Camera.CameraInfo paramCameraInfo)
  {
    j.setInfo(paramCameraInfo);
    k.b();
  }
  
  public static void setCameraPreviewSize(avc paramavc)
  {
    j.setWidth(paramavc.a());
    j.setHeight(paramavc.b());
    k.b();
  }
  
  public abstract void a(@chc Activity paramActivity, @chc a parama);
  
  public abstract void a(ChatConversation paramChatConversation);
  
  public abstract void b();
  
  public abstract void b(@chc DisconnectReason paramDisconnectReason);
  
  public abstract void c();
  
  public abstract void c(boolean paramBoolean);
  
  public abstract boolean d();
  
  protected void dispatchDraw(@chc Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
  }
  
  public abstract boolean e();
  
  public abstract boolean getPresence();
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    bbo.a().c(this);
  }
  
  @bpi
  public abstract void onCameraReadyEvent(bbp parambbp);
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    bbo.a().b(this);
  }
  
  protected abstract void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public abstract void setCanStreamVideo(boolean paramBoolean, @chd DisconnectReason paramDisconnectReason);
  
  public static abstract interface a
  {
    public abstract void b(boolean paramBoolean);
    
    public abstract void c(boolean paramBoolean);
    
    public abstract void d(boolean paramBoolean);
    
    public abstract void p();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.StreamView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */