.class final Lach$1;
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
    .line 117
    iput-object p1, p0, Lach$1;->a:Lach;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7
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

    .line 120
    .line 122
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

    .line 123
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lach$1;->a:Lach;

    iget-object v4, v4, Lach;->b:Lawp;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lawp;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    const-string v4, "IntroVideoMediaLoader"

    const-string v5, "Resetting intro video media state for %s because it is not in the cache %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v4, p0, Lach$1;->a:Lach;

    iget-object v4, v4, Lach;->d:Ladd;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Ladd;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    :goto_1
    move v1, v0

    .line 129
    goto :goto_0

    .line 132
    :cond_0
    if-eqz v1, :cond_1

    .line 133
    iget-object v0, p0, Lach$1;->a:Lach;

    iget-object v0, v0, Lach;->c:Ladj;

    invoke-virtual {v0}, Ladj;->b()V

    .line 135
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
