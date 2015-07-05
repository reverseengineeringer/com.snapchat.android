package org.apache.commons.lang3.builder;

final class ToStringStyle$ShortPrefixToStringStyle
  extends ToStringStyle
{
  private static final long serialVersionUID = 1L;
  
  ToStringStyle$ShortPrefixToStringStyle()
  {
    setUseShortClassName(true);
    setUseIdentityHashCode(false);
  }
  
  private Object readResolve()
  {
    return ToStringStyle.SHORT_PREFIX_STYLE;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringStyle.ShortPrefixToStringStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */