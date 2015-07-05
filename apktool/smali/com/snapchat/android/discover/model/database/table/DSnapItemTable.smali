.class public final Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lbku;",
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

.field private static c:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 46
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    move-result-object v1

    .line 47
    array-length v2, v1

    .line 48
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a:[Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->b:Ljava/util/HashMap;

    .line 50
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 51
    aget-object v3, v1, v0

    .line 52
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 53
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method private static a(Lbku;)Landroid/content/ContentValues;
    .locals 7
    .param p0    # Lbku;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 156
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lbku;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbku;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbku;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    .line 161
    :cond_1
    new-instance v2, Laad;

    invoke-direct {v2}, Laad;-><init>()V

    .line 162
    const/4 v0, -0x1

    .line 164
    invoke-virtual {p0}, Lbku;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkw;

    .line 165
    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0}, Lbkw;->b()Lbkv;

    move-result-object v4

    .line 170
    if-eqz v4, :cond_2

    .line 171
    invoke-virtual {v4}, Lbkv;->c()Ljava/lang/String;

    move-result-object v5

    .line 179
    if-eqz v5, :cond_4

    .line 180
    invoke-static {v5}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->valueOfIgnoreCase(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    .line 181
    sget-object v5, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->MEDIA_TYPE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 189
    :cond_3
    :goto_2
    sget-object v5, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->OVERLAY_ITEM:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v5, :cond_5

    .line 190
    invoke-virtual {v4}, Lbkv;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 191
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->OVERLAY_URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v4}, Lbkv;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 192
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->OVERLAY_DOCKING:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v4}, Lbkv;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 193
    invoke-virtual {v4}, Lbkv;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 183
    :cond_4
    invoke-virtual {v0}, Lbkw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->valueOfIgnoreCase(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    .line 184
    sget-object v5, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->OVERLAY_ITEM:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-eq v0, v5, :cond_3

    .line 185
    sget-object v5, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->MEDIA_TYPE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    goto :goto_2

    .line 196
    :cond_5
    sget-object v5, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->IMAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-eq v0, v5, :cond_6

    sget-object v5, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->VIDEO:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v5, :cond_8

    .line 197
    :cond_6
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v4}, Lbkv;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 201
    :cond_7
    :goto_3
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->VIDEO_FIRST_FRAME_URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v4}, Lbkv;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->VIDEO_ID:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v4}, Lbkv;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->MODE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v4}, Lbkv;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->DOCKING:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v4}, Lbkv;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    goto/16 :goto_1

    .line 198
    :cond_8
    sget-object v5, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->LOCAL_WEBPAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v5, :cond_7

    .line 199
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v4}, Lbkv;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    goto :goto_3

    .line 208
    :cond_9
    iget-object v0, v2, Laad;->a:Landroid/content/ContentValues;

    goto/16 :goto_0
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;
    .locals 2

    .prologue
    .line 103
    const-class v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->c:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->c:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    .line 106
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->c:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lbku;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbku;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 219
    invoke-static {p2}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a(Lbku;)Landroid/content/ContentValues;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 234
    :cond_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p2}, Lbku;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->valueOfIgnoreCase(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Form;

    move-result-object v1

    .line 225
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->FORM:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->ID:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "DSnapItem"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 231
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for DSnapItem"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lbku;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a(Lbku;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
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
            "Lbku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "DSnapItem"

    return-object v0
.end method

.method public final c(Lajv;)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    move-result-object v2

    .line 123
    array-length v3, v2

    .line 124
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 125
    aget-object v4, v2, v0

    .line 126
    if-lez v0, :cond_0

    .line 127
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->a(Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->b(Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v4}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 132
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
