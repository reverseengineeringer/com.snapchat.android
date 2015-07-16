.class public final Lany;
.super Lana;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lany$a;,
        Lany$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana;",
        "Lui$b",
        "<",
        "Lany$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lbhk;

.field private b:Layy;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 64
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    iput-object v0, p0, Lany;->a:Lbhk;

    .line 65
    invoke-static {}, Layy;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lany;->b:Layy;

    .line 66
    const-class v0, Lany$b;

    invoke-virtual {p0, v0, p0}, Lany;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lbhp;->b()V

    iget-object v0, p0, Lany;->b:Layy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Layy;->c(Z)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iput-object v0, p0, Lany;->c:Ljava/lang/String;

    .line 85
    invoke-super {p0, p1}, Lana;->a(Landroid/content/Context;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Lany$a;

    invoke-static {v0}, Lpj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lany;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lany$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "/loq/and/register_exp"

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 2

    .prologue
    .line 29
    check-cast p1, Lany$b;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lany$b;->a:Ljava/util/Map;

    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lakn;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lany;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method
