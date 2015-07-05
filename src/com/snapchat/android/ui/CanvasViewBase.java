package com.snapchat.android.ui;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;

public abstract class CanvasViewBase
  extends View
{
  public CanvasViewBase(Context paramContext)
  {
    super(paramContext);
  }
  
  public abstract void a();
  
  public abstract void a(int paramInt);
  
  public abstract void b();
  
  public abstract boolean c();
  
  public abstract int getColor();
  
  public abstract boolean getDrawingEnabled();
  
  public abstract int getLastColor();
  
  public abstract int getNumberOfStrokes();
  
  public abstract ArrayList getSavedDrawing();
  
  public abstract void setColor(int paramInt);
  
  public abstract void setDrawingEnabled(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CanvasViewBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */