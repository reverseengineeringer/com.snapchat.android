.class final Lacu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laej$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lacu;


# direct methods
.method constructor <init>(Lacu;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lacu$1;->this$0:Lacu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 78
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v5, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v4, v5, :cond_0

    .line 80
    iget-object v0, v0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v4, p0, Lacu$1;->this$0:Lacu;

    iget-object v4, v4, Lacu;->mEditionId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lacu$1;->this$0:Lacu;

    iget-object v0, v0, Lacu;->mMediaStateTracker:Laed;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v3, v4}, Laed;->a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lacu$1;->this$0:Lacu;

    iget-object v0, v0, Lacu;->mVideoCatalog:Laee;

    iget-object v4, v3, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Laee;->a(Ljava/lang/String;Lbky;)V

    .line 90
    iget-object v0, p0, Lacu$1;->this$0:Lacu;

    iget-object v0, v0, Lacu;->mMediaStateTracker:Laed;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v3, v4}, Laed;->a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    if-eqz v1, :cond_3

    .line 97
    iget-object v0, p0, Lacu$1;->this$0:Lacu;

    iget-object v0, v0, Lacu;->mDiscoverRepository:Laej;

    invoke-virtual {v0}, Laej;->c()V

    .line 100
    :cond_3
    iget-object v0, p0, Lacu$1;->this$0:Lacu;

    new-instance v1, Lacv;

    iget-object v2, v0, Lacu;->mEditionId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lacv;-><init>(Ljava/lang/String;)V

    const-class v2, Lbkx;

    invoke-virtual {v1, v2, v0}, Lacv;->registerCallback(Ljava/lang/Class;Lui$b;)V

    invoke-virtual {v1}, Lacv;->execute()V

    .line 101
    return-void
.end method
