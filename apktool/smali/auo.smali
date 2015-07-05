.class public final Lauo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lauo;


# instance fields
.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field public numAccounts:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lauo;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 17
    iget-object v0, p0, Lauo;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lauo;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 18
    iget-object v0, p0, Lauo;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SnapKidzLoginManager_numAccounts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lauo;->numAccounts:I

    .line 19
    return-void
.end method

.method public static declared-synchronized a()Lauo;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lauo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lauo;->sInstance:Lauo;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lauo;

    invoke-direct {v0}, Lauo;-><init>()V

    sput-object v0, Lauo;->sInstance:Lauo;

    .line 25
    :cond_0
    sget-object v0, Lauo;->sInstance:Lauo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lauo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lauo;->sInstance:Lauo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    return-void

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lauo;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 37
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lauo;->numAccounts:I

    if-ge v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Lauo;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SnapKidzLoginManager_username_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    :goto_1
    return v0

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
