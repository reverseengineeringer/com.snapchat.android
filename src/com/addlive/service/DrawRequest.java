package com.addlive.service;

public class DrawRequest
{
  private int bottom;
  private int left;
  private int rendererId;
  private int right;
  private long texU;
  private long texV;
  private long texY;
  private int top;
  
  public DrawRequest(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, long paramLong1, long paramLong2, long paramLong3)
  {
    top = paramInt1;
    left = paramInt2;
    bottom = paramInt3;
    right = paramInt4;
    rendererId = paramInt5;
    texY = paramLong1;
    texU = paramLong2;
    texV = paramLong3;
  }
  
  public String toString()
  {
    return "DrawRequest{top=" + top + ", left=" + left + ", bottom=" + bottom + ", right=" + right + ", rendererId=" + rendererId + ", texY=" + texY + ", texU=" + texU + ", texV=" + texV + "}";
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.DrawRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */