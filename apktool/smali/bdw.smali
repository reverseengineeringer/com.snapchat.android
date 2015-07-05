.class public final Lbdw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBaseFragmentTag:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public mFragmentToStart:Lcom/snapchat/android/util/fragment/SnapchatFragment;

.field public mHideOldFragmentFlag:Z
    .annotation build Lcgc;
    .end annotation
.end field

.field public mTag:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V
    .locals 4

    .prologue
    .line 69
    invoke-static {p1}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;->a(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)Lcom/snapchat/android/fragments/addfriends/LeftSwipeContainerFragment;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;B)V

    .line 37
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lbdw;->mFragmentToStart:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 60
    iput-object p2, p0, Lbdw;->mTag:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lbdw;->mBaseFragmentTag:Ljava/lang/String;

    .line 62
    iput-boolean p4, p0, Lbdw;->mHideOldFragmentFlag:Z

    .line 63
    return-void
.end method
