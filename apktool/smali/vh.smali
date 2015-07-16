.class public final Lvh;
.super Ltx;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvh$c;,
        Lvh$b;,
        Lvh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltx;",
        "Lui$b",
        "<",
        "Lvh$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "/loq/conversations"


# instance fields
.field private final mCallback:Lvh$a;

.field final mIterToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lvh$a;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ltx;-><init>()V

    .line 34
    iput-object p1, p0, Lvh;->mIterToken:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lvh;->mCallback:Lvh$a;

    .line 37
    const-class v0, Lvh$c;

    invoke-virtual {p0, v0, p0}, Lvh;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "/loq/conversations"

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lvh$b;

    invoke-direct {v0, p0}, Lvh$b;-><init>(Lvh;)V

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 2

    .prologue
    .line 20
    check-cast p1, Lvh$c;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lvh;->mCallback:Lvh$a;

    iget-object v1, p1, Lvh$c;->conversations:Ljava/util/List;

    invoke-interface {v0, v1}, Lvh$a;->a(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lvh;->mCallback:Lvh$a;

    invoke-interface {v0}, Lvh$a;->a()V

    goto :goto_0
.end method
