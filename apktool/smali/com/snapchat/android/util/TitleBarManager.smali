.class public final Lcom/snapchat/android/util/TitleBarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lavl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/TitleBarManager$LockedState;,
        Lcom/snapchat/android/util/TitleBarManager$Visibility;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TitleBarManager"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mResources:Landroid/content/res/Resources;

.field public mTitleBarLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

.field public mTitleBarShown:Z

.field public mTitleBarTargetUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

.field mTitleBarUpdateInProgress:Z

.field public mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarShown:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarUpdateInProgress:Z

    .line 52
    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    iput-object v0, p0, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarTargetUnlockedVisibility:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 53
    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$LockedState;->NOT_LOCKED:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    iput-object v0, p0, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarLockedState:Lcom/snapchat/android/util/TitleBarManager$LockedState;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/16 v8, 0x800

    const/16 v7, 0x400

    const/4 v6, 0x0

    .line 160
    iget-boolean v0, p0, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarUpdateInProgress:Z

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarUpdateInProgress:Z

    .line 163
    new-instance v1, Lcom/snapchat/android/util/TitleBarManager$1;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/util/TitleBarManager$1;-><init>(Lcom/snapchat/android/util/TitleBarManager;Z)V

    .line 173
    iget-object v2, p0, Lcom/snapchat/android/util/TitleBarManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snapchat/android/util/TitleBarManager;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    if-eqz v0, :cond_0

    .line 176
    const-string v0, "TitleBarManager"

    const-string v1, "Update was in progress. Wait."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/util/TitleBarManager;->mTitleBarShown:Z

    if-eqz v0, :cond_1

    .line 181
    const-string v0, "TitleBarManager"

    const-string v1, "Showing title bar."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/util/TitleBarManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v8}, Landroid/view/Window;->addFlags(I)V

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/util/TitleBarManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 185
    :cond_1
    const-string v0, "TitleBarManager"

    const-string v1, "Hiding title bar."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/util/TitleBarManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/util/TitleBarManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v8}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
