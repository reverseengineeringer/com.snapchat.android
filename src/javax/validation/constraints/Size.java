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
public @interface Size
{
  Class<?>[] groups() default {};
  
  int max() default Integer.MAX_VALUE;
  
  String message() default "{javax.validation.constraints.Size.message}";
  
  int min() default 0;
  
  Class<? extends Payload>[] payload() default {};
  
  @Documented
  @Retention(RetentionPolicy.RUNTIME)
  @Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.ANNOTATION_TYPE, java.lang.annotation.ElementType.CONSTRUCTOR, java.lang.annotation.ElementType.PARAMETER})
  public static @interface List
  {
    Size[] value();
  }
}

/* Location:
 * Qualified Name:     javax.validation.constraints.Size
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */