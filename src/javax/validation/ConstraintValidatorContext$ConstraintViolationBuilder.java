package javax.validation;

public abstract interface ConstraintValidatorContext$ConstraintViolationBuilder
{
  public abstract LeafNodeBuilderCustomizableContext addBeanNode();
  
  public abstract ConstraintValidatorContext addConstraintViolation();
  
  @Deprecated
  public abstract NodeBuilderDefinedContext addNode$572f8a2b();
  
  public abstract NodeBuilderDefinedContext addParameterNode$47816fdc();
  
  public abstract NodeBuilderCustomizableContext addPropertyNode$1cba0a72();
  
  public static abstract interface LeafNodeBuilderCustomizableContext
  {
    public abstract ConstraintValidatorContext addConstraintViolation();
    
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.LeafNodeContextBuilder inIterable();
  }
  
  public static abstract interface LeafNodeBuilderDefinedContext
  {
    public abstract ConstraintValidatorContext addConstraintViolation();
  }
  
  public static abstract interface LeafNodeContextBuilder
  {
    public abstract ConstraintValidatorContext addConstraintViolation();
    
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.LeafNodeBuilderDefinedContext atIndex$77ebdfa6();
    
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.LeafNodeBuilderDefinedContext atKey$8a86629();
  }
  
  public static abstract interface NodeBuilderCustomizableContext
  {
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.LeafNodeBuilderCustomizableContext addBeanNode();
    
    public abstract ConstraintValidatorContext addConstraintViolation();
    
    @Deprecated
    public abstract NodeBuilderCustomizableContext addNode$1cba0a72();
    
    public abstract NodeBuilderCustomizableContext addPropertyNode$1cba0a72();
    
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.NodeContextBuilder inIterable();
  }
  
  public static abstract interface NodeBuilderDefinedContext
  {
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.LeafNodeBuilderCustomizableContext addBeanNode();
    
    public abstract ConstraintValidatorContext addConstraintViolation();
    
    @Deprecated
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.NodeBuilderCustomizableContext addNode$1cba0a72();
    
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.NodeBuilderCustomizableContext addPropertyNode$1cba0a72();
  }
  
  public static abstract interface NodeContextBuilder
  {
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.LeafNodeBuilderCustomizableContext addBeanNode();
    
    public abstract ConstraintValidatorContext addConstraintViolation();
    
    @Deprecated
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.NodeBuilderCustomizableContext addNode$1cba0a72();
    
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.NodeBuilderCustomizableContext addPropertyNode$1cba0a72();
    
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.NodeBuilderDefinedContext atIndex$18d59c58();
    
    public abstract ConstraintValidatorContext.ConstraintViolationBuilder.NodeBuilderDefinedContext atKey$d5b21a7();
  }
}

/* Location:
 * Qualified Name:     javax.validation.ConstraintValidatorContext.ConstraintViolationBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */