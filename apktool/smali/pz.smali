.class public Lpz;
.super Lbgy;
.source "SourceFile"


# annotations
.annotation runtime Ltn;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lbgy;-><init>()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpz;->c(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lpz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Los;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpz;->e(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpz;->g(Ljava/lang/String;)V

    .line 17
    return-void
.end method
