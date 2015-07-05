.class public final Lahh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahh$a;,
        Lahh$c;,
        Lahh$d;,
        Lahh$b;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/String;)Lahh$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lahh$c",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lahh$c;

    invoke-direct {v0, p0}, Lahh$c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;
    .locals 1
    .param p0    # Lcom/addlive/service/Responder;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Landroid/os/Handler;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/addlive/service/Responder",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/addlive/service/Responder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lahh$2;

    invoke-direct {v0, p1, p0}, Lahh$2;-><init>(Landroid/os/Handler;Lcom/addlive/service/Responder;)V

    return-object v0
.end method
