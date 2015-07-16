.class public Lauf;
.super Lapw;
.source "SourceFile"


# instance fields
.field public mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field private mFriend:Lcom/snapchat/android/model/Friend;

.field private mOnFriendActionMessage:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    const v2, 0x7f0c0143

    invoke-static {v1, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2001

    invoke-direct {p0, p1, v0, v1, v2}, Lapw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->MY_FRIENDS_POPUP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lauf;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 65
    iput-object p2, p0, Lauf;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V
    .locals 2
    .param p5    # Landroid/os/Message;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 54
    const/16 v0, 0x2001

    invoke-direct {p0, p1, p2, p3, v0}, Lapw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->MY_FRIENDS_POPUP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lauf;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 55
    iput-object p4, p0, Lauf;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 56
    iput-object p5, p0, Lauf;->mOnFriendActionMessage:Landroid/os/Message;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lauf;->mTextLimit:Ljava/lang/Integer;

    .line 58
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)Lauf;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lauf;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)Lauf;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)Lauf;
    .locals 6
    .param p2    # Landroid/os/Message;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x7f0c0143

    invoke-static {v1, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v0, Lauf;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lauf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lauf;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lauf;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    .line 72
    new-instance v1, Lqg;

    iget-object v2, p0, Lauf;->mFriend:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v1, v2, v3, v0}, Lqg;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;)V

    iget-object v0, p0, Lauf;->mOnFriendActionMessage:Landroid/os/Message;

    iput-object v0, v1, Lqg;->mOnFriendActionMessage:Landroid/os/Message;

    iget-object v0, p0, Lauf;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, v1, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lqg;->a()Lqg;

    move-result-object v0

    invoke-virtual {v0}, Lqg;->execute()V

    .line 77
    return-void
.end method
