.class public final Lvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;


# instance fields
.field private final a:Lcom/snapchat/android/LandingPageActivity;

.field private final b:Lcom/snapchat/android/util/SnapchatViewPager;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lyq;

.field private final e:Latm;

.field private final f:Lni;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/SnapchatViewPager;)V
    .locals 7

    .prologue
    .line 41
    sget-object v3, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v4

    invoke-static {}, Latm;->a()Latm;

    move-result-object v5

    invoke-static {}, Lni;->a()Lni;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lvf;-><init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/SnapchatViewPager;Ljavax/inject/Provider;Lyq;Latm;Lni;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/SnapchatViewPager;Ljavax/inject/Provider;Lyq;Latm;Lni;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/LandingPageActivity;",
            "Lcom/snapchat/android/util/SnapchatViewPager;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lyq;",
            "Latm;",
            "Lni;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lvf;->a:Lcom/snapchat/android/LandingPageActivity;

    .line 49
    iput-object p2, p0, Lvf;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    .line 50
    iput-object p3, p0, Lvf;->c:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lvf;->d:Lyq;

    .line 52
    iput-object p5, p0, Lvf;->e:Latm;

    .line 53
    iput-object p6, p0, Lvf;->f:Lni;

    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 121
    new-instance v1, Lbat;

    invoke-direct {v1}, Lbat;-><init>()V

    .line 122
    iget-object v0, p0, Lvf;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->onCancelReplyEvent(Lbat;)V

    .line 123
    iget-object v0, p0, Lvf;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/CameraFragment;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->onCancelReplyEvent(Lbat;)V

    .line 128
    :cond_0
    return-void
.end method

.method public final a(Lut;)V
    .locals 1

    .prologue
    .line 58
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    .line 59
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 60
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "feed"

    invoke-static {v0}, Lni;->a(Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lvf;->d:Lyq;

    invoke-virtual {v0, p1}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 68
    :cond_1
    return-void
.end method

.method public final a(Lut;Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 111
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lvf;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    .line 115
    iget-object v0, p0, Lvf;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    new-instance v1, Lbes;

    invoke-direct {v1, p2, p3}, Lbes;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->onUserSwipedIntoChatEvent(Lbes;)V

    .line 117
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lvf;->a:Lcom/snapchat/android/LandingPageActivity;

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;-><init>()V

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->onStartFragmentEvent(Lbdw;)V

    .line 133
    return-void
.end method

.method public final b(Lut;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v1, Lbcz;

    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v2}, Lbcz;-><init>(Ljava/lang/String;IZ)V

    .line 76
    iget-object v0, p0, Lvf;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->onReplySnapEvent(Lbcz;)V

    .line 77
    iget-object v0, p0, Lvf;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/CameraFragment;

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->onReplySnapEvent(Lbcz;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lvf;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    .line 140
    return-void
.end method

.method public final c(Lut;)V
    .locals 3

    .prologue
    .line 88
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lvf;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatFragment;

    .line 91
    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lvf;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajv;

    invoke-static {v2, v1}, Latm;->a(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v1

    .line 96
    new-instance v2, Lbay;

    invoke-direct {v2, v1}, Lbay;-><init>(Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->onChatSwipeStartedEvent(Lbay;)V

    .line 99
    :cond_0
    return-void
.end method

.method public final d(Lut;)V
    .locals 2

    .prologue
    .line 103
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lvf;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    new-instance v1, Lbeq;

    invoke-direct {v1}, Lbeq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->onUserFlingedIntoChatEvent(Lbeq;)V

    .line 107
    :cond_0
    return-void
.end method
