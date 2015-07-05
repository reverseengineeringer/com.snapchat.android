package com.brightcove.player.model;

public class Span
  extends StyledElement
{
  private String text;
  
  public Span() {}
  
  public Span(StyledElement paramStyledElement)
  {
    if (paramStyledElement == null) {
      throw new IllegalArgumentException("must provide a StyledElement");
    }
    styleName = paramStyledElement.getStyleName();
    color = paramStyledElement.getColor();
    backgroundColor = paramStyledElement.getBackgroundColor();
    fontSize = paramStyledElement.getFontSize();
    fontStyle = paramStyledElement.getFontStyle();
  }
  
  public Span(String paramString)
  {
    text = paramString;
  }
  
  public String getText()
  {
    return text;
  }
  
  public void setText(String paramString)
  {
    text = paramString;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.Span
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */