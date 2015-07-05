.class public final Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;,
        Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;
    }
.end annotation


# instance fields
.field public final a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

.field public final b:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->c:Z

    .line 53
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->d:Z

    .line 58
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->e:Z

    .line 63
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->f:Z

    .line 73
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->g:Z

    .line 78
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->h:Z

    .line 83
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->i:Z

    .line 88
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->j:Z

    .line 93
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->k:Z

    .line 98
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->l:Z

    .line 101
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    .line 102
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->b:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    .line 103
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->NON_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->d:Z

    .line 134
    return-object p0

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->SWIPEABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [mTouchMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [mStyle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->b:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [mHideCheckMark "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [mShowSettingsButtonOnTap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [mShowSnapButtonOnTap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [mShowChatButtonOnTap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [mTransparentBackgroundEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [mShowFriendmoji "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] [mShowBlockSwipableButtonOnly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
