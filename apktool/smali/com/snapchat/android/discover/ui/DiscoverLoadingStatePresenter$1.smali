.class public final Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;->b:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;->b:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b()V

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 58
    return-void
.end method
