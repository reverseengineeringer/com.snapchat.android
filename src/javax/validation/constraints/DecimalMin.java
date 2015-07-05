package javax.validation.constraints;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import javax.validation.Constraint;
import javax.validation.Payload;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.ANNOTATION_TYPE, java.lang.annotation.ElementType.CONSTRUCTOR, java.lang.annotation.ElementType.PARAMETER})
@Constraint(validatedBy={})
public @interface DecimalMin
{
  Class<?>[] groups() default {};
  
  boolean inclusive() default true;
  
  String message() default "{javax.validation.constraints.DecimalMin.message}";
  
  Class<? extends Payload>[] payload() default {};
  
  String value();
  
  @Documented
  @Retention(RetentionPolicy.RUNTIME)
  @Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.ANNOTATION_TYPE, java.lang.annotation.ElementType.CONSTRUCTOR, java.lang.annotation.ElementType.PARAMETER})
  public static @interface List
  {
    DecimalMin[] value();
  }
}

/* Location:
 * Qualified Name:     javax.validation.constraints.DecimalMin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */