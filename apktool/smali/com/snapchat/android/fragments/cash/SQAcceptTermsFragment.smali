.class public Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;
    }
.end annotation


# instance fields
.field public a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()V

    .line 75
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->mFragmentLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->N()V

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;->b()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$a;

    .line 69
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 28
    const v0, 0x7f0400ae

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->mFragmentLayout:Landroid/view/View;

    .line 30
    const v0, 0x7f0a03bc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Latj;->a(Landroid/view/View;)V

    new-instance v1, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$2;-><init>(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method
