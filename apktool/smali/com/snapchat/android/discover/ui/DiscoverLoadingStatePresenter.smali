.class public final Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$3;,
        Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/ImageView;

.field public f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

.field public g:Landroid/view/View;

.field public h:Lael;

.field i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    return-void
.end method

.method final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$2;-><init>(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 70
    const-string v0, "DiscoverLoadingStatePresenter"

    const-string v1, "Setting compatibility %s (from %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->UNKNOWN:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-eq v0, v1, :cond_0

    .line 75
    sget-object v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->GENERIC_ERROR:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 77
    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    return-void
.end method

.method final c()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    return-void
.end method
