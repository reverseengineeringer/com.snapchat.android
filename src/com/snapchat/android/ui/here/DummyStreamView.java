package com.snapchat.android.ui.here;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.hardware.Camera.CameraInfo;
import android.util.AttributeSet;
import android.view.MotionEvent;
import avc;
import bbp;
import bpi;
import chc;
import chd;
import com.snapchat.android.model.chat.ChatConversation;

public class DummyStreamView
  extends StreamView
{
  public DummyStreamView(Context paramContext)
  {
    super(paramContext);
  }
  
  public DummyStreamView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public DummyStreamView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public static DummyStreamView getLastInstance()
  {
    return null;
  }
  
  public static void setCameraInfo(Camera.CameraInfo paramCameraInfo) {}
  
  public static void setCameraPreviewSize(avc paramavc) {}
  
  public final void a() {}
  
  public final void a(@chc Activity paramActivity, @chc StreamView.a parama) {}
  
  public final void a(@chc MotionEvent paramMotionEvent) {}
  
  public final void a(ChatConversation paramChatConversation) {}
  
  public final void a(@chd DisconnectReason paramDisconnectReason) {}
  
  public final void a(boolean paramBoolean) {}
  
  public final void b() {}
  
  public final void b(DisconnectReason paramDisconnectReason) {}
  
  public final void b(boolean paramBoolean) {}
  
  public final void c() {}
  
  public final void c(boolean paramBoolean) {}
  
  public final boolean d()
  {
    return false;
  }
  
  protected void dispatchDraw(@chc Canvas paramCanvas) {}
  
  public final boolean e()
  {
    return false;
  }
  
  public boolean getPresence()
  {
    return false;
  }
  
  @bpi
  public void onCameraReadyEvent(bbp parambbp) {}
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public void setCanStreamVideo(boolean paramBoolean, @chd DisconnectReason paramDisconnectReason) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.DummyStreamView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */