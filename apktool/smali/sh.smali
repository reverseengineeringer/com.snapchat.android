.class public abstract Lsh;
.super Lsq;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lsi;",
        ">",
        "Lsq;",
        "Lts$b",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SquareBlockerRequestTask"


# instance fields
.field private final mCallback:Lsh$a;


# direct methods
.method protected constructor <init>(Lsh$a;)V
    .locals 0
    .param p1    # Lsh$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Lsq;-><init>()V

    .line 21
    iput-object p1, p0, Lsh;->mCallback:Lsh$a;

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 5

    .prologue
    .line 12
    check-cast p1, Lsi;

    const-string v0, "SquareBlockerRequestTask"

    const-string v1, "CASH-LOG: %s finished with status code %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p2, Luc;->mResponseCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p2, Luc;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsh;->mCallback:Lsh$a;

    invoke-interface {v0, p1}, Lsh$a;->a(Lsi;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsh;->mCallback:Lsh$a;

    iget v1, p2, Luc;->mResponseCode:I

    invoke-interface {v0, p1, v1}, Lsh$a;->a(Lsi;I)V

    goto :goto_0
.end method
