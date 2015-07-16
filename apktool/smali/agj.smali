.class public final Lagj;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagj$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/snapchat/android/ui/window/WindowConfiguration;

.field private final e:Lagj$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/ui/window/WindowConfiguration;Lagj$a;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 39
    iput-object p2, p0, Lagj;->a:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lagj;->b:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lagj;->c:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lagj;->d:Lcom/snapchat/android/ui/window/WindowConfiguration;

    .line 43
    iput-object p6, p0, Lagj;->e:Lagj$a;

    .line 44
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x2

    return v0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    packed-switch p1, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    .line 65
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 66
    const-string v2, "hide_action_bar"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    :cond_1
    iget-object v1, p0, Lagj;->e:Lagj$a;

    invoke-interface {v1, p1, v0}, Lagj$a;->a(ILandroid/support/v4/app/Fragment;)V

    .line 70
    return-object v0

    .line 52
    :pswitch_0
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;

    iget-object v2, p0, Lagj;->d:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    .line 53
    iget-object v2, p0, Lagj;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const-string v2, "selected_friend_username"

    iget-object v3, p0, Lagj;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 59
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;

    iget-object v2, p0, Lagj;->d:Lcom/snapchat/android/ui/window/WindowConfiguration;

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;-><init>(Lcom/snapchat/android/ui/window/WindowConfiguration;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    packed-switch p1, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lagj;->a:Ljava/lang/String;

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lagj;->b:Ljava/lang/String;

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
