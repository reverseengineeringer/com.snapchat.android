package com.snapchat.android.util.eventbus;

public final class DrawingEvent
{
  public final DrawingEventType mDrawingEventType;
  
  public DrawingEvent(DrawingEventType paramDrawingEventType)
  {
    mDrawingEventType = paramDrawingEventType;
  }
  
  public static enum DrawingEventType
  {
    COMPLETED_STROKE,  STARTED_STROKE;
    
    private DrawingEventType() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.eventbus.DrawingEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */