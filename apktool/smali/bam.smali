.class public final Lbam;
.super Ljava/util/Observable;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lbam;


# instance fields
.field public mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lbam;

    invoke-direct {v0}, Lbam;-><init>()V

    sput-object v0, Lbam;->INSTANCE:Lbam;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static a()Lbam;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lbam;->INSTANCE:Lbam;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_NUM_STORIES_PER_THUMBNAIL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    invoke-virtual {p0}, Lbam;->setChanged()V

    .line 105
    invoke-virtual {p0}, Lbam;->notifyObservers()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_DISCOVER_CUSTOM_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    invoke-virtual {p0}, Lbam;->setChanged()V

    .line 50
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_DISCOVER_CUSTOM_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbam;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_SHOULD_SHOW_DEVICE_TOKEN_TOASTS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    invoke-virtual {p0}, Lbam;->setChanged()V

    .line 73
    invoke-virtual {p0}, Lbam;->notifyObservers()V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_DISCOVER_CUSTOM_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_SHOW_DIAGNOSTIC_OVERLAY:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    invoke-virtual {p0}, Lbam;->setChanged()V

    .line 135
    invoke-virtual {p0}, Lbam;->notifyObservers()V

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_SHOULD_SHOW_DEVICE_TOKEN_TOASTS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final d()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 82
    iget-object v1, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_NUM_STORIES_PER_THUMBNAIL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lbam;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_SHOW_DIAGNOSTIC_OVERLAY:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
