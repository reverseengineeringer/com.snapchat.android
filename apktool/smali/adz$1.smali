.class final Ladz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladz;


# direct methods
.method constructor <init>(Ladz;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Ladz$1;->a:Ladz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v3, 0x7f0a0001

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 111
    const/4 v1, -0x1

    .line 112
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    :cond_0
    iget-object v2, p0, Ladz$1;->a:Ladz;

    invoke-static {v2}, Ladz;->b(Ladz;)Lafh;

    move-result-object v2

    iget-object v3, p0, Ladz$1;->a:Ladz;

    invoke-static {v3}, Ladz;->a(Ladz;)Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->STORIES:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v2, v0, v3, v4, v1}, Lafh;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/model/EditionOpenOrigin;I)Z

    move-result v1

    .line 120
    if-nez v1, :cond_2

    .line 121
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    iget-object v1, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Ladz$1;->a:Ladz;

    iget-object v0, v0, Ladz;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laes;

    .line 123
    if-nez v0, :cond_1

    .line 124
    new-instance v0, Laes;

    invoke-direct {v0}, Laes;-><init>()V

    .line 127
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Laes;->a:Z

    .line 128
    iget-object v2, p0, Ladz$1;->a:Ladz;

    iget-object v2, v2, Ladz;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_2
    return-void
.end method
