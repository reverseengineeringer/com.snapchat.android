package com.brightcove.player.captioning;

import android.content.Context;
import android.graphics.Typeface;

public class BrightcoveClosedCaptioningStyle$Builder
{
  private int mBackgroundColor = 0;
  private BrightcoveClosedCaptioningTextView.EdgeAttribute mEdgeAttribute = BrightcoveClosedCaptioningStyle.DEFAULT_EDGE_ATTRIBUTE;
  private int mEdgeColor = 0;
  private int mHighlightColor = 0;
  private int mTextColor = -1;
  private float mTextSize = 14.0F;
  private Typeface mTypeface = BrightcoveClosedCaptioningStyle.DEFAULT_TYPEFACE;
  
  protected BrightcoveClosedCaptioningStyle$Builder(Context paramContext) {}
  
  public Builder copyFrom(BrightcoveClosedCaptioningStyle paramBrightcoveClosedCaptioningStyle)
  {
    setBackgroundColor(backgroundColor);
    setHighlightColor(highlightColor);
    setTypeface(typeface);
    setTextColor(textColor);
    setTextSize(textSize);
    setEdgeAttribute(edgeAttribute);
    setEdgeColor(edgeColor);
    return this;
  }
  
  public BrightcoveClosedCaptioningStyle create()
  {
    return new BrightcoveClosedCaptioningStyle(mBackgroundColor, mHighlightColor, mTypeface, mTextColor, mTextSize, mEdgeAttribute, mEdgeColor);
  }
  
  public int getBackgroundColor()
  {
    return mBackgroundColor;
  }
  
  public BrightcoveClosedCaptioningTextView.EdgeAttribute getEdgeAttribute()
  {
    return mEdgeAttribute;
  }
  
  public int getEdgeColor()
  {
    return mEdgeColor;
  }
  
  public int getHighlightColor()
  {
    return mHighlightColor;
  }
  
  public int getTextColor()
  {
    return mTextColor;
  }
  
  public float getTextSize()
  {
    return mTextSize;
  }
  
  public Typeface getTypeface()
  {
    return mTypeface;
  }
  
  public Builder setBackgroundColor(int paramInt)
  {
    mBackgroundColor = paramInt;
    return this;
  }
  
  public Builder setEdgeAttribute(BrightcoveClosedCaptioningTextView.EdgeAttribute paramEdgeAttribute)
  {
    mEdgeAttribute = paramEdgeAttribute;
    return this;
  }
  
  public Builder setEdgeColor(int paramInt)
  {
    mEdgeColor = paramInt;
    return this;
  }
  
  public Builder setHighlightColor(int paramInt)
  {
    mHighlightColor = paramInt;
    return this;
  }
  
  public Builder setTextColor(int paramInt)
  {
    mTextColor = paramInt;
    return this;
  }
  
  public Builder setTextSize(float paramFloat)
  {
    mTextSize = paramFloat;
    return this;
  }
  
  public Builder setTypeface(Typeface paramTypeface)
  {
    mTypeface = paramTypeface;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.BrightcoveClosedCaptioningStyle.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */