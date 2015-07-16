.class public Lqp;
.super Lbhy;
.source "SourceFile"


# annotations
.annotation runtime Lud;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lbhy;-><init>()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqp;->c(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lqp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqp;->e(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqp;->g(Ljava/lang/String;)V

    .line 17
    return-void
.end method
