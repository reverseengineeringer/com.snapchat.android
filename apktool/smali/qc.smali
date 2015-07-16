.class public Lqc;
.super Lbhy;
.source "SourceFile"


# annotations
.annotation runtime Lud;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Lbhy;-><init>()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqc;->c(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lqc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqc;->e(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqc;->g(Ljava/lang/String;)V

    .line 13
    return-void
.end method
