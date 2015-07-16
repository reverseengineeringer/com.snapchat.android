.class public final Lbgu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJ)I
    .locals 2

    .prologue
    .line 14
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
