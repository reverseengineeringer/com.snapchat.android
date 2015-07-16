.class public final Lbfk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;
    .annotation build Lchd;
    .end annotation
.end field

.field public mUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;
    .annotation build Lchd;
    .end annotation
.end field

.field public mVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;
    .annotation build Lchd;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/TitleBarManager$LockedState;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lbfk;->mVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 42
    iput-object v0, p0, Lbfk;->mUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 43
    iput-object p1, p0, Lbfk;->mLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lbfk;->mVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 22
    iput-object p1, p0, Lbfk;->mUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lbfk;->mLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;Lcom/snapchat/android/util/TitleBarManager$LockedState;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lbfk;->mVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lbfk;->mUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 34
    iput-object p2, p0, Lbfk;->mLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    .line 35
    return-void
.end method
