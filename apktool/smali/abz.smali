.class public final Labz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladj$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labz$a;
    }
.end annotation


# static fields
.field private static c:Labz;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labz$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Lajx;

.field private final f:Lbgk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Labz;

    invoke-direct {v0}, Labz;-><init>()V

    sput-object v0, Labz;->c:Labz;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Lajx;

    invoke-direct {v2}, Lajx;-><init>()V

    new-instance v3, Lbgk;

    invoke-direct {v3}, Lbgk;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Labz;-><init>(Ladj;Landroid/content/SharedPreferences;Lajx;Lbgk;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Ladj;Landroid/content/SharedPreferences;Lajx;Lbgk;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labz;->a:Ljava/util/Set;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labz;->b:Ljava/util/Set;

    .line 72
    invoke-virtual {p1, p0}, Ladj;->a(Ladj$a;)V

    .line 73
    iput-object p2, p0, Labz;->d:Landroid/content/SharedPreferences;

    .line 74
    iput-object p3, p0, Labz;->e:Lajx;

    .line 75
    iput-object p4, p0, Labz;->f:Lbgk;

    .line 76
    return-void
.end method

.method public static a()Labz;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Labz;->c:Labz;

    return-object v0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Labz;->a:Ljava/util/Set;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Labz;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labz$a;

    .line 194
    invoke-interface {v0, p1}, Labz$a;->a(Z)V

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private d()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 85
    iget-object v1, p0, Labz;->d:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->CURRENT_EDITION_IDS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    const-string v3, "DiscoverNewContentObserver"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v1, p0, Labz;->b:Ljava/util/Set;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Labz;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 114
    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v3, p0, Labz;->b:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-virtual {p0}, Labz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    const-string v0, "DiscoverNewContentObserver"

    const-string v1, "Updated - new editions were found"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Labz;->a(Z)V

    .line 128
    :goto_1
    return-void

    .line 126
    :cond_2
    const-string v0, "DiscoverNewContentObserver"

    const-string v1, "Updated - no new editions were found"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 135
    invoke-direct {p0}, Labz;->d()Ljava/util/Set;

    move-result-object v1

    .line 136
    iget-object v2, p0, Labz;->b:Ljava/util/Set;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v0, p0, Labz;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x1

    monitor-exit v2

    .line 146
    :goto_0
    return v0

    .line 145
    :cond_1
    monitor-exit v2

    .line 146
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    const-string v0, "DiscoverNewContentObserver"

    const-string v1, "Discover has been seen by the user, resetting list of seen editions ids."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Labz;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lajx;->g(J)V

    .line 166
    iget-object v1, p0, Labz;->b:Ljava/util/Set;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Labz;->b:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 167
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    iget-object v1, p0, Labz;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 171
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->CURRENT_EDITION_IDS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    invoke-direct {p0, v5}, Labz;->a(Z)V

    goto :goto_0
.end method
