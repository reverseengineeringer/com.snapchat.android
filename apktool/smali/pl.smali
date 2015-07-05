.class public Lpl;
.super Lbgy;
.source "SourceFile"


# annotations
.annotation runtime Ltn;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Lbgy;-><init>()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl;->c(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lpl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Los;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl;->e(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl;->g(Ljava/lang/String;)V

    .line 13
    return-void
.end method
