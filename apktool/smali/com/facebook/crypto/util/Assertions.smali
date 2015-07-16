.class public Lcom/facebook/crypto/util/Assertions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkState(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    return-void
.end method
