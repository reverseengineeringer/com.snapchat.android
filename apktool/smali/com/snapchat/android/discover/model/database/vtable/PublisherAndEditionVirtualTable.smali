.class public final Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;
.super Lcom/snapchat/android/database/vtable/DbVirtualTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;
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

.field private static c:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x3d

    const/16 v6, 0x2c

    .line 41
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    move-result-object v1

    .line 42
    array-length v2, v1

    .line 43
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a:[Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->b:Ljava/util/HashMap;

    .line 45
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 46
    aget-object v3, v1, v0

    .line 47
    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 48
    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " CREATE VIEW PublisherAndEdition AS SELECT * FROM PublisherChannel LEFT JOIN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(SELECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "NumDSnapsAlias"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " AS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NumDSnapsAlias"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " AS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->CURRENT_EDITION_ID:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NumDSnapsAlias"

    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->NUM_CHUNKS:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " AS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->NUM_CHUNKS:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(SELECT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Edition"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v3, v4}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " AS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MIN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM Edition GROUP BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Edition"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v3, v4}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS OldestEditionAlias"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INNER JOIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(SELECT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "DSnapsEditionAlias"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v3, v4}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " AS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DSnapsEditionAlias"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v3, v4}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " AS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DSnapsEditionAlias"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v3, v4}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " AS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " COUNT(*) AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->NUM_CHUNKS:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(SELECT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "EditionChunk"

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v4, v5}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " AS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Edition"

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v4, v5}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " AS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Edition"

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v4, v5}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " AS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EditionChunk"

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v4, v5}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " AS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM Edition INNER JOIN EditionChunk ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Edition"

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->ID:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v4, v5}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EditionChunk"

    sget-object v5, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v4, v5}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AS DSnapsEditionAlias"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GROUP BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DSnapsEditionAlias"

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v3, v4}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS NumDSnapsAlias"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OldestEditionAlias"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NumDSnapsAlias"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OldestEditionAlias"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NumDSnapsAlias"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->TIME_ADDED:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v2, v3}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AS OldestEditionQueriesAlias"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PublisherChannel"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->NAME:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-static {v1, v2}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OldestEditionQueriesAlias"

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-static {v1, v2}, Laau;->a(Ljava/lang/String;Laav;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/snapchat/android/database/vtable/DbVirtualTable;-><init>()V

    .line 61
    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage$a;
    .locals 20
    .annotation build Lawj;
    .end annotation

    .annotation build Lchc;
    .end annotation

    .prologue
    .line 142
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->PUBLISHER_FORMAL_NAME:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 144
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->PUBLISHER_INTERNATIONAL_NAME:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 145
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->PRIMARY_COLOR:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 146
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->SECONDARY_COLOR:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 147
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->FILLED_ICON:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 148
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->INVERTED_ICON:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 149
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->LOADING_ICON:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 150
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->INTRO_MOVIE:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 151
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->INTRO_AD_UNIT_ID:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 152
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->INTRO_AD_TARGETING:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 153
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->ENABLED:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 154
    :goto_0
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->POSITION:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 155
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 156
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->PROMOTED_STORIES_PAGE_POSITION:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v4, 0x0

    .line 161
    sget-object v19, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->CURRENT_EDITION_ID:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual/range {v19 .. v19}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_0

    .line 162
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->CURRENT_EDITION_ID:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    :cond_0
    sget-object v19, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->NUM_CHUNKS:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual/range {v19 .. v19}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_1

    .line 166
    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->NUM_CHUNKS:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnNumber()I

    move-result v4

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 169
    :cond_1
    new-instance v19, Lcom/snapchat/android/discover/model/ChannelPage$a;

    invoke-direct/range {v19 .. v19}, Lcom/snapchat/android/discover/model/ChannelPage$a;-><init>()V

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->a:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v6, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->b:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v7, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->c:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v8, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->d:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->e:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v10, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->h:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->i:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->j:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->k:Ljava/lang/String;

    move/from16 v0, v16

    move-object/from16 v1, v19

    iput v0, v1, Lcom/snapchat/android/discover/model/ChannelPage$a;->m:I

    move/from16 v0, v17

    move-object/from16 v1, v19

    iput v0, v1, Lcom/snapchat/android/discover/model/ChannelPage$a;->n:I

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/snapchat/android/discover/model/ChannelPage$a;->o:I

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->l:Z

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->p:Ljava/lang/String;

    move-object/from16 v0, v19

    iput v4, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->q:I

    move-object/from16 v0, v19

    iput-object v14, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->v:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v15, v0, Lcom/snapchat/android/discover/model/ChannelPage$a;->w:Ljava/lang/String;

    return-object v19

    .line 153
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static d()Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->c:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->c:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    .line 58
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->c:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "PublisherAndEdition"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[Laav;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->values()[Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    move-result-object v0

    return-object v0
.end method
