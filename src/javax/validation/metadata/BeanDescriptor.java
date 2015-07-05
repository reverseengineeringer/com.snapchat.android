package javax.validation.metadata;

import java.util.Set;

public abstract interface BeanDescriptor
  extends ElementDescriptor
{
  public abstract Set<ConstructorDescriptor> getConstrainedConstructors();
  
  public abstract MethodType<MethodType> getConstrainedMethods$4182084f$7cf224ab();
  
  public abstract Set<PropertyDescriptor> getConstrainedProperties();
  
  public abstract ConstructorDescriptor getConstraintsForConstructor$21227bb8();
  
  public abstract MethodDescriptor getConstraintsForMethod$30b1c50b();
  
  public abstract PropertyDescriptor getConstraintsForProperty$7987561f();
  
  public abstract boolean isBeanConstrained();
}

/* Location:
 * Qualified Name:     javax.validation.metadata.BeanDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */