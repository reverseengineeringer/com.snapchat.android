.class public final Lbwk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lbwa;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 125
    invoke-static {p0}, Lbwa;->a(Landroid/content/Context;)V

    .line 127
    sget-object v0, Lbwa;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
