package android.media;

import android.graphics.Canvas;

public abstract interface SubtitleTrack$RenderingWidget
{
  public abstract void draw(Canvas paramCanvas);
  
  public abstract void onAttachedToWindow();
  
  public abstract void onDetachedFromWindow();
  
  public abstract void setOnChangedListener(OnChangedListener paramOnChangedListener);
  
  public abstract void setSize(int paramInt1, int paramInt2);
  
  public abstract void setVisible(boolean paramBoolean);
  
  public static abstract interface OnChangedListener
  {
    public abstract void onChanged(SubtitleTrack.RenderingWidget paramRenderingWidget);
  }
}

/* Location:
 * Qualified Name:     android.media.SubtitleTrack.RenderingWidget
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */