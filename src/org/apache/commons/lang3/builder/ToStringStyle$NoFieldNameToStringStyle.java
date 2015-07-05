package org.apache.commons.lang3.builder;

final class ToStringStyle$NoFieldNameToStringStyle
  extends ToStringStyle
{
  private static final long serialVersionUID = 1L;
  
  ToStringStyle$NoFieldNameToStringStyle()
  {
    setUseFieldNames(false);
  }
  
  private Object readResolve()
  {
    return ToStringStyle.NO_FIELD_NAMES_STYLE;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringStyle.NoFieldNameToStringStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */