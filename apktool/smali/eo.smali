.class public final Leo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation


# direct methods
.method public static a(ZZ)I
    .locals 1

    .prologue
    .line 77
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
