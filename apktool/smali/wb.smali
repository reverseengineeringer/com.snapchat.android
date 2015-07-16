.class public final Lwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$a;


# instance fields
.field private final a:Lcom/snapchat/android/LandingPageActivity;

.field private final b:Lcom/snapchat/android/util/SnapchatViewPager;

.field private final c:Lcom/snapchat/android/ui/SnapView;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lzm;

.field private final f:Lauk;

.field private final g:Lnz;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/SnapchatViewPager;Lcom/snapchat/android/ui/SnapView;)V
    .locals 8

    .prologue
    .line 42
    sget-object v4, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v5

    invoke-static {}, Lauk;->a()Lauk;

    move-result-object v6

    invoke-static {}, Lnz;->a()Lnz;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lwb;-><init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/SnapchatViewPager;Lcom/snapchat/android/ui/SnapView;Ljavax/inject/Provider;Lzm;Lauk;Lnz;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/SnapchatViewPager;Lcom/snapchat/android/ui/SnapView;Ljavax/inject/Provider;Lzm;Lauk;Lnz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/LandingPageActivity;",
            "Lcom/snapchat/android/util/SnapchatViewPager;",
            "Lcom/snapchat/android/ui/SnapView;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lzm;",
            "Lauk;",
            "Lnz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lwb;->a:Lcom/snapchat/android/LandingPageActivity;

    .line 50
    iput-object p2, p0, Lwb;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    .line 51
    iput-object p3, p0, Lwb;->c:Lcom/snapchat/android/ui/SnapView;

    .line 52
    iput-object p4, p0, Lwb;->d:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lwb;->e:Lzm;

    .line 54
    iput-object p6, p0, Lwb;->f:Lauk;

    .line 55
    iput-object p7, p0, Lwb;->g:Lnz;

    .line 56
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 124
    new-instance v1, Lbbu;

    invoke-direct {v1}, Lbbu;-><init>()V

    .line 125
    iget-object v0, p0, Lwb;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->onCancelReplyEvent(Lbbu;)V

    .line 126
    iget-object v0, p0, Lwb;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/CameraFragment;

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->onCancelReplyEvent(Lbbu;)V

    .line 131
    :cond_0
    return-void
.end method

.method public final a(Lvp;)V
    .locals 1

    .prologue
    .line 60
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    .line 61
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 62
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 65
    const-string v0, "feed"

    invoke-static {v0}, Lnz;->a(Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lwb;->e:Lzm;

    invoke-virtual {v0, p1}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 70
    :cond_1
    return-void

    .line 64
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lvp;Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 114
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lwb;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    .line 118
    iget-object v0, p0, Lwb;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    new-instance v1, Lbfr;

    invoke-direct {v1, p2, p3}, Lbfr;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->onUserSwipedIntoChatEvent(Lbfr;)V

    .line 120
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lwb;->a:Lcom/snapchat/android/LandingPageActivity;

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;-><init>()V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->onStartFragmentEvent(Lbev;)V

    .line 136
    return-void
.end method

.method public final b(Lvp;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lwb;->c:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v1, Lbdz;

    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v2}, Lbdz;-><init>(Ljava/lang/String;IZ)V

    .line 79
    iget-object v0, p0, Lwb;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->onReplySnapEvent(Lbdz;)V

    .line 80
    iget-object v0, p0, Lwb;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/CameraFragment;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->onReplySnapEvent(Lbdz;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lwb;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    .line 143
    return-void
.end method

.method public final c(Lvp;)V
    .locals 3

    .prologue
    .line 91
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lwb;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatFragment;

    .line 94
    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lwb;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakp;

    invoke-static {v2, v1}, Lauk;->a(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v1

    .line 99
    new-instance v2, Lbbz;

    invoke-direct {v2, v1}, Lbbz;-><init>(Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->onChatSwipeStartedEvent(Lbbz;)V

    .line 102
    :cond_0
    return-void
.end method

.method public final d(Lvp;)V
    .locals 2

    .prologue
    .line 106
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lwb;->b:Lcom/snapchat/android/util/SnapchatViewPager;

    new-instance v1, Lbfp;

    invoke-direct {v1}, Lbfp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->onUserFlingedIntoChatEvent(Lbfp;)V

    .line 110
    :cond_0
    return-void
.end method
