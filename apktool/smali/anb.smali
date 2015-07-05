.class public final Lanb;
.super Lamd;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanb$a;,
        Lanb$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamd;",
        "Lts$b",
        "<",
        "Lanb$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lbgk;

.field private b:Laya;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 64
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    iput-object v0, p0, Lanb;->a:Lbgk;

    .line 65
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    iput-object v0, p0, Lanb;->b:Laya;

    .line 66
    const-class v0, Lanb$b;

    invoke-virtual {p0, v0, p0}, Lanb;->a(Ljava/lang/Class;Lts$b;)V

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lbgp;->b()V

    iget-object v0, p0, Lanb;->b:Laya;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laya;->c(Z)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iput-object v0, p0, Lanb;->c:Ljava/lang/String;

    .line 85
    invoke-super {p0, p1}, Lamd;->a(Landroid/content/Context;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 2

    .prologue
    .line 29
    check-cast p1, Lanb$b;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lanb$b;->a:Ljava/util/Map;

    invoke-static {}, Lajt;->a()Lajt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lajt;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanb;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Lanb$a;

    invoke-static {v0}, Los;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanb;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lanb$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "/loq/and/register_exp"

    return-object v0
.end method
