.class final Lacu$3;
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
    .line 156
    iput-object p1, p0, Lacu$3;->this$0:Lacu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
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
    .line 158
    const/4 v0, 0x0

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 161
    iget-object v3, v0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    iget-object v4, p0, Lacu$3;->this$0:Lacu;

    iget-object v4, v4, Lacu;->mEditionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->REMOTE_VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v3, v4, :cond_0

    .line 167
    iget-object v3, p0, Lacu$3;->this$0:Lacu;

    iget-object v3, v3, Lacu;->mMediaStateTracker:Laed;

    invoke-virtual {v3, v0}, Laed;->a(Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->FETCHING_MEDIA:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v3, v4, :cond_0

    .line 172
    iget-object v3, p0, Lacu$3;->this$0:Lacu;

    iget-object v3, v3, Lacu;->mMediaStateTracker:Laed;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->NETWORK_ERROR:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v3, v0, v4}, Laed;->a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 176
    goto :goto_0

    .line 179
    :cond_1
    if-eqz v1, :cond_2

    .line 180
    iget-object v0, p0, Lacu$3;->this$0:Lacu;

    iget-object v0, v0, Lacu;->mDiscoverRepository:Laej;

    invoke-virtual {v0}, Laej;->c()V

    .line 182
    :cond_2
    return-void
.end method
