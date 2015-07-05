.class final Laci$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laci;


# direct methods
.method constructor <init>(Laci;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Laci$3;->a:Laci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
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
    .line 193
    iget-object v2, p0, Laci$3;->a:Laci;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    sget-object v4, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    sget-object v5, Lcom/snapchat/android/networkmanager/DownloadPriority;->HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v2, v0, v4, v5}, Laci;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v4

    or-int/2addr v1, v4

    sget-object v4, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    sget-object v5, Lcom/snapchat/android/networkmanager/DownloadPriority;->HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v2, v0, v4, v5}, Laci;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v4

    or-int/2addr v1, v4

    sget-object v4, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->LOADING_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    sget-object v5, Lcom/snapchat/android/networkmanager/DownloadPriority;->MEDIUM:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v2, v0, v4, v5}, Laci;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, v2, Laci;->c:Ladj;

    invoke-virtual {v0}, Ladj;->b()V

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, v2, Laci;->b:Lawp;

    invoke-virtual {v0, v1}, Lawp;->a(Ljava/util/Set;)V

    .line 194
    return-void
.end method
