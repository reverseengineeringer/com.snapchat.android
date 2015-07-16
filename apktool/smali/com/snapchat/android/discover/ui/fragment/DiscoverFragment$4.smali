.class final Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->onPagedToDiscoverEvent(Lafy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafy;

.field final synthetic b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Lafy;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Lafy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 298
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/ChannelGroupView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Lafy;

    iget-object v1, v1, Lafy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 301
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lafh;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v2}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->CHAT:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Lafy;

    iget-object v4, v4, Lafy;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Lafy;

    iget-object v5, v5, Lafy;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Lafy;

    iget-object v6, v6, Lafy;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Lafy;

    iget-boolean v7, v7, Lafy;->d:Z

    invoke-virtual/range {v0 .. v7}, Lafh;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/model/EditionOpenOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 309
    return-void
.end method
