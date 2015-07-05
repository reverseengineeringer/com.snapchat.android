package org.apache.http.config;

public class MessageConstraints$Builder
{
  private int maxHeaderCount = -1;
  private int maxLineLength = -1;
  
  public MessageConstraints build()
  {
    return new MessageConstraints(maxLineLength, maxHeaderCount);
  }
  
  public Builder setMaxHeaderCount(int paramInt)
  {
    maxHeaderCount = paramInt;
    return this;
  }
  
  public Builder setMaxLineLength(int paramInt)
  {
    maxLineLength = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.config.MessageConstraints.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */