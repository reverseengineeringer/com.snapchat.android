.class public final Lmq;
.super Lavs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lavs;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 3

    .prologue
    .line 43
    packed-switch p2, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    .line 54
    instance-of v2, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 55
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .line 56
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 60
    :cond_0
    iput-boolean v0, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->k:Z

    move-object v0, v1

    .line 89
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 91
    const-string v2, "page_index"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 66
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-direct {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;-><init>()V

    goto :goto_1

    .line 71
    :pswitch_2
    new-instance v0, Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {v0}, Lcom/snapchat/android/camera/CameraFragment;-><init>()V

    goto :goto_1

    .line 76
    :pswitch_3
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;-><init>()V

    goto :goto_1

    .line 81
    :pswitch_4
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-direct {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;-><init>()V

    goto :goto_1

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x5

    return v0
.end method
