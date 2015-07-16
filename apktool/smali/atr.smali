.class public final Latr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latr$a;
    }
.end annotation


# instance fields
.field protected final mUserPrefs:Lakr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-direct {p0, v0}, Latr;-><init>(Lakr;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Lakr;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Latr;->mUserPrefs:Lakr;

    .line 42
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 170
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Latr$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 99
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 100
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v1

    const-string v0, "display_name"

    aput-object v0, v2, v6

    const-string v0, "contact_last_updated_timestamp"

    aput-object v0, v2, v4

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 106
    :goto_0
    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 110
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 111
    new-instance v3, Latr$a;

    invoke-static {v0}, Latr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2, v4, v5}, Latr$a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 113
    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 119
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_2
    return-object v7

    .line 119
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static a(JLakp;Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lakp;",
            "Ljava/util/Set",
            "<",
            "Latr$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v2, p2, Lakp;->mContactsOnSnapchat:Ljava/util/List;

    .line 280
    iget-object v3, p2, Lakp;->mContactsOnSnapchatSet:Ljava/util/Set;

    .line 281
    invoke-static {p2}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->e(Lakp;)Ljava/util/Map;

    move-result-object v4

    .line 283
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 290
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latr$a;

    .line 291
    iget-object v1, v0, Latr$a;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Lazd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {v1}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v10

    sub-long v10, v6, v10

    cmp-long v1, v10, p0

    if-ltz v1, :cond_2

    .line 297
    iget-object v0, v0, Latr$a;->mDisplayName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    :cond_3
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    monitor-enter v2

    .line 306
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 307
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 308
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 310
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 312
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
