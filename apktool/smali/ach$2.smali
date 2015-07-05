.class final Lach$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lach;


# direct methods
.method constructor <init>(Lach;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lach$2;->a:Lach;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 147
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    const-string v4, "IntroVideoMediaLoader"

    const-string v5, "Resetting state for %s because it was in error state %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v4, p0, Lach$2;->a:Lach;

    iget-object v4, v4, Lach;->d:Ladd;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Ladd;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 152
    goto :goto_0

    .line 155
    :cond_0
    if-eqz v1, :cond_1

    .line 156
    iget-object v0, p0, Lach$2;->a:Lach;

    iget-object v0, v0, Lach;->c:Ladj;

    invoke-virtual {v0}, Ladj;->b()V

    .line 158
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
