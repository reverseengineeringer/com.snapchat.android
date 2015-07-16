.class public final Lpr;
.super Lpk;
.source "SourceFile"


# static fields
.field public static final SET_BIRTHDAY_ACTION_PARAM:Ljava/lang/String; = "updateBirthday"

.field public static final SET_EMAIL_ACTION_PARAM:Ljava/lang/String; = "updateEmail"

.field public static final SET_PRIVACY_ACTION_PARAM:Ljava/lang/String; = "updatePrivacy"

.field public static final SET_SEARCHABLE_BY_PHONE_NUMBER:Ljava/lang/String; = "updateSearchableByPhoneNumber"

.field public static final SET_STORY_PRIVACY_ACTION_PARAM:Ljava/lang/String; = "updateStoryPrivacy"

.field private static final TASK_NAME:Ljava/lang/String; = "SettingsTask"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mData:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lpk;-><init>()V

    .line 27
    iput-object p1, p0, Lpr;->mAction:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lpr;->mData:[Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "/ph/settings"

    return-object v0
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2, p1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v1, "action"

    iget-object v2, p0, Lpr;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lpr;->mAction:Ljava/lang/String;

    const-string v2, "updateBirthday"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "birthday"

    iget-object v2, p0, Lpr;->mData:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v1, p0, Lpr;->mAction:Ljava/lang/String;

    const-string v2, "updateEmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "email"

    iget-object v2, p0, Lpr;->mData:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    iget-object v1, p0, Lpr;->mAction:Ljava/lang/String;

    const-string v2, "updatePrivacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "privacySetting"

    iget-object v2, p0, Lpr;->mData:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_2
    iget-object v1, p0, Lpr;->mAction:Ljava/lang/String;

    const-string v2, "updateStoryPrivacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    iget-object v1, p0, Lpr;->mData:[Ljava/lang/String;

    aget-object v1, v1, v3

    .line 66
    const-string v2, "privacySetting"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v2

    iget-object v2, v2, Lakp;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "storyFriendsToBlock"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_3
    iget-object v1, p0, Lpr;->mAction:Ljava/lang/String;

    const-string v2, "updateSearchableByPhoneNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "searchable"

    iget-object v2, p0, Lpr;->mData:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_4
    return-object v0
.end method

.method protected final b(Lalp;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lpr;->mAction:Ljava/lang/String;

    const-string v1, "updateBirthday"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0000-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lpr;->mData:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->e(Ljava/lang/String;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lpr;->mAction:Ljava/lang/String;

    const-string v1, "updateEmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpr;->mData:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lakr;->i(Ljava/lang/String;)V

    .line 36
    :cond_1
    iget-object v0, p0, Lpr;->mAction:Ljava/lang/String;

    const-string v1, "updatePrivacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpr;->mData:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lakr;->c(I)V

    .line 37
    :cond_2
    iget-object v0, p0, Lpr;->mAction:Ljava/lang/String;

    const-string v1, "updateStoryPrivacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lpr;->mData:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->ordinal()I

    move-result v0

    invoke-static {v0}, Lakr;->d(I)V

    .line 40
    :cond_3
    iget-object v0, p0, Lpr;->mAction:Ljava/lang/String;

    const-string v1, "updateSearchableByPhoneNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lpr;->mData:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lakr;->l(Z)V

    .line 42
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v3, p1, Lalp;->message:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 43
    :cond_5
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "SettingsTask"

    return-object v0
.end method
