.class public Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 26
    new-instance v0, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;-><init>()V

    .line 27
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 28
    const-string v2, "text_message"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v0
.end method


# virtual methods
.method public final g()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    const-string v1, "text_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->a:Ljava/lang/String;

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate - mText "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 45
    const v0, 0x7f040094

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->mFragmentLayout:Landroid/view/View;

    .line 47
    const v0, 0x7f0a032c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f0a0329

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method
