.class final Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanh;)V
    .locals 3

    .prologue
    .line 85
    invoke-static {p1}, Laph;->a(Lanh;)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lafh;

    move-result-object v0

    invoke-virtual {v0}, Lafh;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Laej;

    move-result-object v0

    invoke-virtual {v0}, Laej;->d()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Laek;

    if-eqz v0, :cond_1

    .line 97
    check-cast p1, Laek;

    .line 98
    iget v0, p1, Laek;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lafl;

    move-result-object v0

    invoke-virtual {v0}, Lafl;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->GENERIC_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i()Z

    .line 105
    :cond_1
    return-void
.end method
