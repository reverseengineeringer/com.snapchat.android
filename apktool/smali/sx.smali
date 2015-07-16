.class public abstract Lsx;
.super Ltg;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lsy;",
        ">",
        "Ltg;",
        "Lui$b",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SquareBlockerRequestTask"


# instance fields
.field private final mCallback:Lsx$a;


# direct methods
.method protected constructor <init>(Lsx$a;)V
    .locals 0
    .param p1    # Lsx$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Ltg;-><init>()V

    .line 21
    iput-object p1, p0, Lsx;->mCallback:Lsx$a;

    .line 22
    return-void
.end method


# virtual methods
.method public synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 3

    .prologue
    .line 12
    check-cast p1, Lsy;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p2, Lus;->mResponseCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p2, Lus;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsx;->mCallback:Lsx$a;

    invoke-interface {v0, p1}, Lsx$a;->a(Lsy;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsx;->mCallback:Lsx$a;

    iget v1, p2, Lus;->mResponseCode:I

    invoke-interface {v0, p1, v1}, Lsx$a;->a(Lsy;I)V

    goto :goto_0
.end method
