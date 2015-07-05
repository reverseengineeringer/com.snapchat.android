package javax.validation.metadata;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.validation.ConstraintValidator;
import javax.validation.Payload;

public abstract interface ConstraintDescriptor<T extends Annotation>
{
  public abstract T getAnnotation();
  
  public abstract Map<String, Object> getAttributes();
  
  public abstract Set<ConstraintDescriptor<?>> getComposingConstraints();
  
  public abstract List<Class<? extends ConstraintValidator<T, ?>>> getConstraintValidatorClasses();
  
  public abstract Set<Class<?>> getGroups();
  
  public abstract String getMessageTemplate();
  
  public abstract Set<Class<? extends Payload>> getPayload();
  
  public abstract int getValidationAppliesTo$2f1c97b();
  
  public abstract boolean isReportAsSingleViolation();
}

/* Location:
 * Qualified Name:     javax.validation.metadata.ConstraintDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */