.class public final Lup;
.super Lth;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lup$c;,
        Lup$b;,
        Lup$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lth;",
        "Lts$b",
        "<",
        "Lup$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "/loq/conversations"


# instance fields
.field private final mCallback:Lup$a;

.field final mIterToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lup$a;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lth;-><init>()V

    .line 34
    iput-object p1, p0, Lup;->mIterToken:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lup;->mCallback:Lup$a;

    .line 37
    const-class v0, Lup$c;

    invoke-virtual {p0, v0, p0}, Lup;->a(Ljava/lang/Class;Lts$b;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 2

    .prologue
    .line 20
    check-cast p1, Lup$c;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lup;->mCallback:Lup$a;

    iget-object v1, p1, Lup$c;->conversations:Ljava/util/List;

    invoke-interface {v0, v1}, Lup$a;->a(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lup;->mCallback:Lup$a;

    invoke-interface {v0}, Lup$a;->a()V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lup$b;

    invoke-direct {v0, p0}, Lup$b;-><init>(Lup;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "/loq/conversations"

    return-object v0
.end method
