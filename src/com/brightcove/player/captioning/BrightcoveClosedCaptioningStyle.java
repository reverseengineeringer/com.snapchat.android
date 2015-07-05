package com.brightcove.player.captioning;

import android.content.Context;
import android.graphics.Typeface;

public class BrightcoveClosedCaptioningStyle
{
  public static final int DEFAULT_BACKGROUND_COLOR = 0;
  public static final BrightcoveClosedCaptioningTextView.EdgeAttribute DEFAULT_EDGE_ATTRIBUTE = BrightcoveClosedCaptioningTextView.EdgeAttribute.NONE;
  public static final int DEFAULT_EDGE_COLOR = 0;
  public static final int DEFAULT_HIGHLIGHT_COLOR = 0;
  public static final int DEFAULT_TEXT_COLOR = -1;
  public static final float DEFAULT_TEXT_SIZE = 14.0F;
  public static final Typeface DEFAULT_TYPEFACE = Typeface.MONOSPACE;
  public static final int OPACITY_OPAQUE = 255;
  public static final int OPACITY_SEMI_TRANSPARENT = Math.round(191.25F);
  public static final int OPACITY_SEMI_TRANSPARENT_LIGHT = Math.round(63.75F);
  public static final int OPACITY_TRANSPARENT = Math.round(0.0F);
  public final int backgroundColor;
  public final BrightcoveClosedCaptioningTextView.EdgeAttribute edgeAttribute;
  public final int edgeColor;
  public final int highlightColor;
  public final int textColor;
  public final float textSize;
  public final Typeface typeface;
  
  protected BrightcoveClosedCaptioningStyle(int paramInt1, int paramInt2, Typeface paramTypeface, int paramInt3, float paramFloat, BrightcoveClosedCaptioningTextView.EdgeAttribute paramEdgeAttribute, int paramInt4)
  {
    backgroundColor = paramInt1;
    highlightColor = paramInt2;
    typeface = paramTypeface;
    textColor = paramInt3;
    textSize = paramFloat;
    edgeAttribute = paramEdgeAttribute;
    edgeColor = paramInt4;
  }
  
  public static Builder newBuilder(Context paramContext)
  {
    return new Builder(paramContext);
  }
  
  public String toString()
  {
    return "<CaptionsStyle backgroundColor=" + backgroundColor + ", highlightColor=" + highlightColor + ", typeface=" + typeface + ", textSize=" + textSize + ", textColor=" + textColor + ", edgeAttribute=" + edgeAttribute + ", edgeColor=" + edgeColor + ">";
  }
  
  public static class Builder
  {
    private int mBackgroundColor = 0;
    private BrightcoveClosedCaptioningTextView.EdgeAttribute mEdgeAttribute = BrightcoveClosedCaptioningStyle.DEFAULT_EDGE_ATTRIBUTE;
    private int mEdgeColor = 0;
    private int mHighlightColor = 0;
    private int mTextColor = -1;
    private float mTextSize = 14.0F;
    private Typeface mTypeface = BrightcoveClosedCaptioningStyle.DEFAULT_TYPEFACE;
    
    protected Builder(Context paramContext) {}
    
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
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.BrightcoveClosedCaptioningStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */