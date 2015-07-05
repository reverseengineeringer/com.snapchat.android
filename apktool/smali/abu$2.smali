.class final Labu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Labu;


# direct methods
.method constructor <init>(Labu;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Labu$2;->this$0:Labu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
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
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 116
    iget-object v4, v0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v5, p0, Labu$2;->this$0:Labu;

    iget-object v5, v5, Labu;->mEditionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v4

    .line 121
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v5, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v5, :cond_0

    .line 122
    iget-object v0, p0, Labu$2;->this$0:Labu;

    iget-object v0, v0, Labu;->mMediaStateTracker:Ladd;

    invoke-virtual {v0, v4}, Ladd;->a(Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v5, :cond_0

    .line 128
    iget-object v5, v4, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Labu$2;->this$0:Labu;

    iget-object v0, v0, Labu;->mTempVideoCatalog:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Labu$2;->this$0:Labu;

    iget-object v0, v0, Labu;->mTempVideoCatalog:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjx;

    .line 134
    const-string v6, "FetchVideoCatalogOperation"

    const-string v7, "DISCOVER-MEDIA: Successfully loaded metadata for %s, with response %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    aput-object v0, v8, v9

    invoke-static {v6, v7, v8}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v6, p0, Labu$2;->this$0:Labu;

    iget-object v6, v6, Labu;->mVideoCatalog:Lade;

    invoke-virtual {v6, v5, v0}, Lade;->a(Ljava/lang/String;Lbjx;)V

    .line 137
    iget-object v0, p0, Labu$2;->this$0:Labu;

    iget-object v0, v0, Labu;->mMediaStateTracker:Ladd;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v4, v5}, Ladd;->a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "FetchVideoCatalogOperation"

    const-string v5, "DISCOVER-MEDIA: Failed load video URL for %s, it was not in the server response"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v0, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Labu$2;->this$0:Labu;

    iget-object v0, v0, Labu;->mMediaStateTracker:Ladd;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->GENERIC_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v4, v5}, Ladd;->a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 142
    goto :goto_0

    .line 145
    :cond_2
    if-eqz v1, :cond_3

    .line 146
    iget-object v0, p0, Labu$2;->this$0:Labu;

    iget-object v0, v0, Labu;->mDiscoverRepository:Ladj;

    invoke-virtual {v0}, Ladj;->b()V

    .line 148
    :cond_3
    return-void
.end method
