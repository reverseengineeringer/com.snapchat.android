package javax.validation.metadata;

import java.util.Set;

public abstract interface CascadableDescriptor
{
  public abstract Set<GroupConversionDescriptor> getGroupConversions();
  
  public abstract boolean isCascaded();
}

/* Location:
 * Qualified Name:     javax.validation.metadata.CascadableDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */