.class public final Lanc;
.super Lana;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana;",
        "Lui$b",
        "<",
        "Lblf;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lakp;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Latr$a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;
    .annotation build Lcf;
    .end annotation
.end field

.field protected final g:Lbhk;
    .annotation build Lcf;
    .end annotation
.end field

.field private k:Lcom/squareup/otto/Bus;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private final o:Lakr;

.field private final p:Lban;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 84
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->a()Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;

    move-result-object v3

    new-instance v4, Lban;

    invoke-direct {v4}, Lban;-><init>()V

    new-instance v5, Lbhk;

    invoke-direct {v5}, Lbhk;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lanc;-><init>(Landroid/content/Intent;Lakr;Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;Lban;Lbhk;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lakr;Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;Lban;Lbhk;)V
    .locals 2
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 92
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lanc;->k:Lcom/squareup/otto/Bus;

    .line 93
    const-string v0, "use_cache"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lanc;->m:Z

    .line 94
    const-string v0, "only_new_contact"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lanc;->n:Z

    .line 95
    iput-object p2, p0, Lanc;->o:Lakr;

    .line 96
    iput-object p3, p0, Lanc;->f:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;

    .line 97
    iput-object p4, p0, Lanc;->p:Lban;

    .line 98
    const-class v0, Lblf;

    invoke-virtual {p0, v0, p0}, Lanc;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 99
    iput-object p5, p0, Lanc;->g:Lbhk;

    .line 100
    return-void
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 276
    invoke-static {}, Lakr;->bu()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->FINDFRIENDS_TIMESTAMPS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "~"

    invoke-static {v0, v3}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 279
    iget-object v0, p0, Lanc;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    invoke-static {v0}, Lazd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    if-nez v1, :cond_2

    .line 284
    :goto_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 286
    :cond_1
    iget-object v0, p0, Lanc;->a:Lakp;

    invoke-static {v0, v2}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->a(Lakp;Ljava/util/Map;)V

    .line 287
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Ljava/util/Set;J)V
    .locals 10
    .annotation build Lcf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/16 v8, 0xc8

    .line 171
    iget-object v0, p0, Lanc;->a:Lakp;

    invoke-static {v0}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->e(Lakp;)Ljava/util/Map;

    move-result-object v0

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v1, v4, p2

    if-ltz v1, :cond_0

    .line 176
    new-instance v4, Latr$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, ""

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v1, v5, v6, v7}, Latr$a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_2

    .line 181
    new-instance v0, Lanc$1;

    invoke-direct {v0, p0}, Lanc$1;-><init>(Lanc;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 190
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latr$a;

    iget-object v0, v0, Latr$a;->mNumber:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 192
    :cond_3
    return-void
.end method

.method private a(ZLjava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanc;->d:Ljava/util/Map;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanc;->e:Ljava/util/Map;

    .line 198
    iget-object v0, p0, Lanc;->a:Lakp;

    invoke-static {v0}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->e(Lakp;)Ljava/util/Map;

    move-result-object v4

    .line 200
    iget-object v0, p0, Lanc;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latr$a;

    .line 201
    if-eqz p1, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    :cond_1
    iget-object v1, p0, Lanc;->d:Ljava/util/Map;

    iget-object v6, v0, Latr$a;->mNumber:Ljava/lang/String;

    iget-object v0, v0, Latr$a;->mDisplayName:Ljava/lang/String;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, v0, Latr$a;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Lazd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 205
    iget-object v1, p0, Lanc;->e:Ljava/util/Map;

    iget-object v6, v0, Latr$a;->mNumber:Ljava/lang/String;

    iget-object v7, v0, Latr$a;->mDisplayName:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lanc;->d:Ljava/util/Map;

    iget-object v6, v0, Latr$a;->mNumber:Ljava/lang/String;

    iget-object v0, v0, Latr$a;->mDisplayName:Ljava/lang/String;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_3
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v0, Latr$a;->mLastUpdatedTimestamp:J

    cmp-long v1, v8, v6

    if-ltz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_1

    .line 207
    :cond_5
    iget-object v1, v0, Latr$a;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Lazd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lanc;->d:Ljava/util/Map;

    iget-object v6, v0, Latr$a;->mNumber:Ljava/lang/String;

    iget-object v0, v0, Latr$a;->mDisplayName:Ljava/lang/String;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    move v1, v3

    .line 207
    goto :goto_2

    .line 212
    :cond_7
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    const/4 v6, 0x1

    .line 112
    invoke-static {}, Lakr;->Z()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "Don\'t send the find friend request because the user has not given access to contacts. This is probably because the phone number is reset to an empty string."

    invoke-static {v0, p1, v6}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V

    .line 116
    :cond_0
    iget-object v0, p0, Lanc;->p:Lban;

    new-instance v1, Lou;

    invoke-direct {v1}, Lou;-><init>()V

    invoke-virtual {v0, v1}, Lban;->a(Ljava/lang/Throwable;)V

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    iget-boolean v0, p0, Lanc;->m:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lanc;->n:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lanc;->o:Lakr;

    invoke-virtual {v0}, Lakr;->bv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_3
    invoke-static {p1}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v0

    iput-object v0, p0, Lanc;->a:Lakp;

    .line 128
    iput-object p1, p0, Lanc;->b:Landroid/content/Context;

    .line 129
    invoke-static {p1}, Latr;->a(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lanc;->c:Ljava/util/Set;

    .line 131
    iget-object v0, p0, Lanc;->c:Ljava/util/Set;

    iget-object v1, p0, Lanc;->a:Lakp;

    invoke-static {}, Lbhp;->b()V

    invoke-static {v1}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->e(Lakp;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latr$a;

    iget-object v5, v0, Latr$a;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Lazd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, v0, Latr$a;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lazd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v1, v2}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;->a(Lakp;Ljava/util/Set;)V

    .line 133
    :cond_6
    invoke-static {}, Lakr;->bu()Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 135
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 136
    if-le v2, v6, :cond_7

    .line 137
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-int/lit8 v0, v2, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    add-int/lit8 v2, v2, -0x1

    int-to-long v4, v2

    div-long/2addr v0, v4

    .line 140
    mul-long v4, v0, v8

    iget-object v2, p0, Lanc;->a:Lakp;

    iget-object v6, p0, Lanc;->c:Ljava/util/Set;

    invoke-static {v4, v5, v2, v6}, Latr;->a(JLakp;Ljava/util/Set;)V

    .line 143
    mul-long/2addr v0, v8

    invoke-direct {p0, v3, v0, v1}, Lanc;->a(Ljava/util/Set;J)V

    .line 147
    :cond_7
    iget-boolean v0, p0, Lanc;->m:Z

    invoke-direct {p0, v0, v3}, Lanc;->a(ZLjava/util/Set;)V

    .line 148
    iget-object v0, p0, Lanc;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-boolean v0, p0, Lanc;->m:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lanc;->n:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lanc;->e:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanc;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_8
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 161
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanc;->l:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lanc;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "us"

    iput-object v0, p0, Lanc;->l:Ljava/lang/String;

    .line 166
    :cond_9
    invoke-super {p0, p1}, Lana;->a(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lanc;->a:Lakp;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lanc;->a:Lakp;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONTACTS_ON_SNAPCHAT:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONTACTS_NOT_ON_SNAPCHAT:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 302
    :cond_0
    return-void
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 245
    new-instance v0, Lanc$a;

    invoke-direct {v0, p0}, Lanc$a;-><init>(Lanc;)V

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lanc;->d:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanc$a;->a(Ljava/lang/String;)Lble;

    move-result-object v0

    iget-object v1, p0, Lanc;->l:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lble;->b(Ljava/lang/String;)Lble;

    move-result-object v0

    invoke-static {v0}, Lanc;->buildAuthPayload(Lbhy;)Lbhy;

    move-result-object v0

    return-object v0
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string v0, "/ph/find_friends"

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 13

    .prologue
    .line 54
    check-cast p1, Lblf;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lblf;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lanc;->c:Ljava/util/Set;

    iget-object v2, p0, Lanc;->a:Lakp;

    iget-object v3, v2, Lakp;->mContactsOnSnapchat:Ljava/util/List;

    iget-object v4, v2, Lakp;->mContactsNotOnSnapchat:Ljava/util/List;

    invoke-virtual {v2}, Lakp;->o()Ljava/util/List;

    move-result-object v5

    iget-object v6, v2, Lakp;->mContactsOnSnapchatSet:Ljava/util/Set;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    monitor-enter v3

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiu;

    new-instance v9, Lcom/snapchat/android/model/Friend;

    invoke-direct {v9, v0, v2}, Lcom/snapchat/android/model/Friend;-><init>(Lbiu;Lakp;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    monitor-enter v4

    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latr$a;

    iget-object v2, v0, Latr$a;->mNumber:Ljava/lang/String;

    iget-object v0, v0, Latr$a;->mDisplayName:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lcom/snapchat/android/model/Friend;

    const-string v5, ""

    invoke-direct {v3, v5, v0, v2}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    :try_start_3
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p1}, Lblf;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lanc;->e:Ljava/util/Map;

    iget-object v3, p0, Lanc;->a:Lakp;

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-nez v3, :cond_9

    :cond_7
    :goto_4
    invoke-virtual {p1}, Lblf;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lakr;->e(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lanc;->a(J)V

    iget-boolean v0, p0, Lanc;->m:Z

    if-nez v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lakr;->b(J)Z

    :cond_8
    iget-object v0, p0, Lanc;->k:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcd;

    invoke-direct {v1}, Lbcd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_5
    return-void

    :cond_9
    invoke-virtual {v3}, Lakp;->s()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiu;

    invoke-virtual {v0}, Lbiu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lcom/snapchat/android/model/Friend;

    invoke-direct {v2, v0, v3}, Lcom/snapchat/android/model/Friend;-><init>(Lbiu;Lakp;)V

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-interface {v4, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_c
    invoke-virtual {v3, v4}, Lakp;->b(Ljava/util/List;)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lanc;->k:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcd;

    invoke-direct {v1}, Lbcd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lus;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lanc;->k:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c01d0

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_5
.end method
