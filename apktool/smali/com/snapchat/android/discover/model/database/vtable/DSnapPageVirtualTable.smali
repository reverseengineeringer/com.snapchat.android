.class public final Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;
.super Lcom/snapchat/android/database/vtable/DbVirtualTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;
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

.field private static final f:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field private static final g:[Ljava/lang/String;

.field private static h:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

.field private static final i:Ljava/lang/String;


# instance fields
.field public final c:Laed;

.field public final d:Laee;

.field private final e:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    .line 45
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->VIDEO_FIRST_FRAME_URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->MEDIA_TYPE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->DOCKING:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->MODE:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->VIDEO_ID:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->OVERLAY_URI:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->OVERLAY_DOCKING:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    sput-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->f:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 67
    invoke-static {}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->values()[Lcom/snapchat/android/discover/model/DSnapPage$Form;

    move-result-object v5

    array-length v1, v5

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->f:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    array-length v2, v2

    mul-int/2addr v1, v2

    new-array v6, v1, [Ljava/lang/String;

    array-length v7, v5

    move v4, v0

    move v1, v0

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v2, v5, v4

    invoke-static {v2}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->f:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    array-length v10, v9

    move v2, v1

    move v1, v0

    :goto_1
    if-ge v1, v10, :cond_0

    aget-object v11, v9, v1

    add-int/lit8 v3, v2, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v2

    goto :goto_0

    :cond_1
    sput-object v6, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->g:[Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->values()[Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    move-result-object v1

    .line 71
    array-length v2, v1

    .line 72
    new-array v3, v2, [Ljava/lang/String;

    sput-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a:[Ljava/lang/String;

    .line 73
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->b:Ljava/util/HashMap;

    .line 74
    :goto_2
    if-ge v0, v2, :cond_2

    .line 75
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    .line 76
    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a:[Ljava/lang/String;

    aput-object v3, v4, v0

    .line 77
    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_2
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->i:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Laed;->a()Laed;

    move-result-object v0

    invoke-static {}, Laee;->a()Laee;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;-><init>(Laed;Laee;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 92
    return-void
.end method

.method private constructor <init>(Laed;Laee;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/snapchat/android/database/vtable/DbVirtualTable;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->c:Laed;

    .line 98
    iput-object p2, p0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->d:Laee;

    .line 99
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->e:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 100
    return-void
.end method

.method private static a(Lcom/snapchat/android/discover/model/DSnapPage$Form;)Ljava/lang/StringBuilder;
    .locals 8

    .prologue
    .line 272
    invoke-static {p0}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    const-string v0, "(SELECT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->f:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 276
    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    .line 277
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " FROM DSnapItem WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->FORM:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\') AS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    return-object v2
.end method

.method public static d()Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->h:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->h:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    .line 87
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->h:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x2e

    const/16 v9, 0x29

    const/4 v0, 0x0

    const/16 v8, 0x2c

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " CREATE VIEW DSnapPage AS SELECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Edition"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 156
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "chunk_dsnap_items"

    invoke-static {v7, v5}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 161
    sget-object v6, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    if-eq v5, v6, :cond_1

    .line 162
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "chunk_dsnap_items"

    invoke-static {v7, v5}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 160
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Edition."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->g:[Ljava/lang/String;

    array-length v3, v1

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 173
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "chunk_dsnap_items."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 179
    :cond_3
    const-string v0, " FROM Edition LEFT JOIN "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "( SELECT * FROM EditionChunk LEFT JOIN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "( SELECT * FROM DSnap LEFT JOIN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(SELECT * FROM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a(Lcom/snapchat/android/discover/model/DSnapPage$Form;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a(Lcom/snapchat/android/discover/model/DSnapPage$Form;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPage$Form;->TOP_SNAP:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-static {v4}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-static {v4}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS dsnap_items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DSnap"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-static {v3, v4}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dsnap_items"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-static {v3, v4}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS dsnap_and_dsnap_items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EditionChunk"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dsnap_and_dsnap_items"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->HASH:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS chunk_dsnap_items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Edition"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v1, v2}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chunk_dsnap_items"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v1, v2}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "DSnapPage"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[Laav;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->values()[Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    move-result-object v0

    return-object v0
.end method
