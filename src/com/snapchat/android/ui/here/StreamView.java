package com.snapchat.android.ui.here;

import ahl.a;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.hardware.Camera.CameraInfo;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import aqg;
import aue;
import ban;
import bao;
import boh;
import cgb;
import cgc;
import com.addlive.service.AddLiveService.VideoFrameMetadata;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.ChatCameraButton.a;
import com.squareup.otto.Bus;

public abstract class StreamView
  extends FrameLayout
  implements ahl.a, ChatCameraButton.a
{
  protected static final AddLiveService.VideoFrameMetadata j = new AddLiveService.VideoFrameMetadata();
  protected static final aqg k = new aqg();
  
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
  
  public static void setCameraPreviewSize(aue paramaue)
  {
    j.setWidth(paramaue.a());
    j.setHeight(paramaue.b());
    k.b();
  }
  
  public abstract void a(@cgb Activity paramActivity, @cgb a parama);
  
  public abstract void a(ChatConversation paramChatConversation);
  
  public abstract void b();
  
  public abstract void b(@cgb DisconnectReason paramDisconnectReason);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract void c();
  
  public abstract boolean d();
  
  protected void dispatchDraw(@cgb Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
  }
  
  public abstract boolean e();
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ban.a().c(this);
  }
  
  @boh
  public abstract void onCameraReadyEvent(bao parambao);
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    ban.a().b(this);
  }
  
  protected abstract void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public abstract void setCanStreamVideo(boolean paramBoolean, @cgc DisconnectReason paramDisconnectReason);
  
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