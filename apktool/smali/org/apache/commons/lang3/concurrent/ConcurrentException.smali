.class public Lorg/apache/commons/lang3/concurrent/ConcurrentException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x5be89589f59f3c52L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p2}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method
