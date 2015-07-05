package org.apache.commons.lang3.builder;

final class ToStringStyle$SimpleToStringStyle
  extends ToStringStyle
{
  private static final long serialVersionUID = 1L;
  
  ToStringStyle$SimpleToStringStyle()
  {
    setUseClassName(false);
    setUseIdentityHashCode(false);
    setUseFieldNames(false);
    setContentStart("");
    setContentEnd("");
  }
  
  private Object readResolve()
  {
    return ToStringStyle.SIMPLE_STYLE;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringStyle.SimpleToStringStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */