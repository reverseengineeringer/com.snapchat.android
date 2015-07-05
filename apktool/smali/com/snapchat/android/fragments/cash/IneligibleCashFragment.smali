.class public Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 15
    const v0, 0x7f040071

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;->mFragmentLayout:Landroid/view/View;

    .line 17
    const v0, 0x7f0a0266

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method
