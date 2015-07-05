.class final Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->onPagedToDiscoverEvent(Laey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laey;

.field final synthetic b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Laey;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Laey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 296
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/ChannelGroupView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Laey;

    iget-object v1, v1, Laey;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Laeh;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v2}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->CHAT:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Laey;

    iget-object v4, v4, Laey;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Laey;

    iget-object v5, v5, Laey;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Laey;

    iget-object v6, v6, Laey;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Laey;

    iget-boolean v7, v7, Laey;->d:Z

    invoke-virtual/range {v0 .. v7}, Laeh;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/model/EditionOpenOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 307
    return-void
.end method
