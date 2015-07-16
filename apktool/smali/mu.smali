.class public final Lmu;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# instance fields
.field public a:Landroid/support/v4/app/Fragment;

.field private final b:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field private final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 35
    iput-object p2, p0, Lmu;->b:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 36
    iput-object p3, p0, Lmu;->c:Landroid/os/Bundle;

    .line 37
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 54
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lmu;->a:Landroid/support/v4/app/Fragment;

    .line 57
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x2

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    new-instance v0, Landroid/support/v4/app/Fragment;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lmu;->b:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->newInstance()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lmu;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lmu;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    .line 43
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move-object v0, v1

    .line 44
    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lmu;->a:Landroid/support/v4/app/Fragment;

    .line 47
    :cond_0
    return-object v1
.end method
