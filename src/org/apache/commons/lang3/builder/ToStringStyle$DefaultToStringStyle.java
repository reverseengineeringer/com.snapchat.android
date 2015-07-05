package org.apache.commons.lang3.builder;

final class ToStringStyle$DefaultToStringStyle
  extends ToStringStyle
{
  private static final long serialVersionUID = 1L;
  
  private Object readResolve()
  {
    return ToStringStyle.DEFAULT_STYLE;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringStyle.DefaultToStringStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */