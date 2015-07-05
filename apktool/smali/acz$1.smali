.class final Lacz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacz;


# direct methods
.method constructor <init>(Lacz;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lacz$1;->a:Lacz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 139
    check-cast p1, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 141
    iget-object v0, p0, Lacz$1;->a:Lacz;

    invoke-static {v0}, Lacz;->b(Lacz;)Laeh;

    move-result-object v0

    iget-object v1, p0, Lacz$1;->a:Lacz;

    invoke-static {v1}, Lacz;->a(Lacz;)Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->STORIES:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v0, p1, v1, v2}, Laeh;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/model/EditionOpenOrigin;)Z

    move-result v0

    .line 145
    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    iget-object v1, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lacz$1;->a:Lacz;

    iget-object v0, v0, Lacz;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads;

    .line 148
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lads;

    invoke-direct {v0}, Lads;-><init>()V

    .line 152
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lads;->a:Z

    .line 153
    iget-object v2, p0, Lacz$1;->a:Lacz;

    iget-object v2, v2, Lacz;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    return-void
.end method
