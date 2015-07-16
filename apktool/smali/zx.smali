.class public final Lzx;
.super Lzy;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lakl;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)V
    .locals 4
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakl;",
            "Lcom/snapchat/android/model/StoryCollection;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lzy;-><init>(Lakl;Lcom/snapchat/android/model/StoryCollection;)V

    .line 21
    invoke-static {}, Ldu;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lzx;->a:Ljava/util/Map;

    .line 29
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 30
    iget-object v2, p0, Lzx;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget-object v3, v3, Lakl;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
