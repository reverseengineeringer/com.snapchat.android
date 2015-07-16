.class public abstract Laou;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected b:Laos;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 11
    iget-object v0, p0, Laou;->b:Laos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laou;->b:Laos;

    iget-wide v0, v0, Laos;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Laou;->b:Laos;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Laos;->c:J

    .line 14
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laou;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Laou;->b:Laos;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Laou;->b:Laos;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Laos;->c:J

    .line 23
    :cond_0
    return-void
.end method
