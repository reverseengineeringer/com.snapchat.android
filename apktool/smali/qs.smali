.class public final Lqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqo;


# static fields
.field public static final NAME:Ljava/lang/String; = "snapcash"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 70
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final b()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Lqv;

    const/4 v1, 0x0

    new-instance v2, Lqy;

    invoke-direct {v2}, Lqy;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lqv;

    const/4 v1, 0x0

    new-instance v2, Lra;

    invoke-direct {v2}, Lra;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Lqv;

    const/4 v1, 0x0

    new-instance v2, Lrb;

    invoke-direct {v2}, Lrb;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Lqv;

    const/4 v1, 0x0

    new-instance v2, Lqy;

    invoke-direct {v2}, Lqy;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
