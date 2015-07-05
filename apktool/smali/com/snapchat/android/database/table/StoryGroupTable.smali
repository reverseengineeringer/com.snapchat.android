.class public final Lcom/snapchat/android/database/table/StoryGroupTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/StoryGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/snapchat/android/database/table/StoryGroupTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->values()[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    move-result-object v2

    .line 28
    array-length v3, v2

    .line 29
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/StoryGroupTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 30
    :goto_0
    if-ge v1, v3, :cond_0

    .line 31
    sget-object v4, Lcom/snapchat/android/database/table/StoryGroupTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/StoryGroupTable;->b:Ljava/util/HashMap;

    .line 36
    invoke-static {}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->values()[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 37
    sget-object v4, Lcom/snapchat/android/database/table/StoryGroupTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/StoryGroupTable;
    .locals 2

    .prologue
    .line 81
    const-class v1, Lcom/snapchat/android/database/table/StoryGroupTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable;->c:Lcom/snapchat/android/database/table/StoryGroupTable;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/snapchat/android/database/table/StoryGroupTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/StoryGroupTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/StoryGroupTable;->c:Lcom/snapchat/android/database/table/StoryGroupTable;

    .line 84
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable;->c:Lcom/snapchat/android/database/table/StoryGroupTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 16
    check-cast p1, Lcom/snapchat/android/model/StoryGroup;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Laad;

    invoke-direct {v1}, Laad;-><init>()V

    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->ID:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->DISPLAY_NAME:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v2, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->SHOULD_FETCH_CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    iget-object v0, v1, Laad;->a:Landroid/content/ContentValues;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 16
    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->ID:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->DISPLAY_NAME:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->SHOULD_FETCH_CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v4, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/snapchat/android/model/StoryGroup$a;

    invoke-direct {v5, v2}, Lcom/snapchat/android/model/StoryGroup$a;-><init>(Ljava/lang/String;)V

    iput-object v3, v5, Lcom/snapchat/android/model/StoryGroup$a;->mDisplayName:Ljava/lang/String;

    iput-boolean v0, v5, Lcom/snapchat/android/model/StoryGroup$a;->mShouldFetchCustomDescription:Z

    iput-object v4, v5, Lcom/snapchat/android/model/StoryGroup$a;->mCustomDescription:Ljava/lang/String;

    new-instance v0, Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {v0, v5, v1}, Lcom/snapchat/android/model/StoryGroup;-><init>(Lcom/snapchat/android/model/StoryGroup$a;B)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {v0}, Lajq;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v1

    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/database/table/StoryGroupTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lajq;->mStories:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v1, Lajq;->mStories:Ljava/util/Map;

    const-string v3, "my_story_ads79sdf"

    invoke-static {}, Lajb;->a()Lajb;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    iget-object v3, v1, Lajq;->mStories:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->values()[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "StoryGroup"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-static {}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->values()[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    move-result-object v2

    .line 96
    array-length v3, v2

    .line 97
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 98
    aget-object v4, v2, v0

    .line 99
    if-lez v0, :cond_0

    .line 100
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->a(Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b(Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
