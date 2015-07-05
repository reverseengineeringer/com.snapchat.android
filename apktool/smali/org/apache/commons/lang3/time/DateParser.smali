.class public interface abstract Lorg/apache/commons/lang3/time/DateParser;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getPattern()Ljava/lang/String;
.end method

.method public abstract getTimeZone()Ljava/util/TimeZone;
.end method

.method public abstract parse(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.end method

.method public abstract parseObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
.end method
