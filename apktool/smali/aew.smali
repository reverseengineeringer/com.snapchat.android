.class public final Laew;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/discover/model/EditionOpenOrigin;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/EditionOpenOrigin;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laew;->c:Ljava/util/List;

    .line 22
    iput-object p1, p0, Laew;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Laew;->b:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/discover/model/EditionOpenOrigin;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/EditionOpenOrigin;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/EditionOpenOrigin;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laew;->c:Ljava/util/List;

    .line 28
    iput-object p1, p0, Laew;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Laew;->b:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    .line 30
    iget-object v0, p0, Laew;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    return-void
.end method
