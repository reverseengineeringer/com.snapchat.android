.class public final Laoa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoa$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lbpd;
    .locals 3
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 37
    :try_start_0
    new-instance v0, Lbpd$a;

    invoke-direct {v0, p0}, Lbpd$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Laoa$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Laoa$a;-><init>(B)V

    iget-object v2, v0, Lbpd$a;->c:Lbpd$f;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transformer already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 37
    :cond_0
    iput-object v1, v0, Lbpd$a;->c:Lbpd$f;

    invoke-virtual {v0}, Lbpd$a;->a()Lbpd;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lbpd;->a(Lbpd;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method
