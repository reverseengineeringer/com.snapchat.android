.class public final Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;,
        Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;


# instance fields
.field private final b:Lbgk;

.field private final c:Lacw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;->a:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-static {}, Lacw;->a()Lacw;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;-><init>(Lbgk;Lacw;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Lbgk;Lacw;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;->b:Lbgk;

    .line 109
    iput-object p2, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;->c:Lacw;

    .line 110
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;->a:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 28
    check-cast p1, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;

    new-instance v0, Laad;

    invoke-direct {v0}, Laad;-><init>()V

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->PUBLISHER_INTERNATIONAL_NAME:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;

    iget-object v2, p1, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->DATE_VIEWED:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;

    iget-wide v2, p1, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Laad;->a(Lzw;J)Laad;

    move-result-object v0

    iget-object v0, v0, Laad;->a:Landroid/content/ContentValues;

    return-object v0
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 28
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->PUBLISHER_INTERNATIONAL_NAME:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->DATE_VIEWED:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    new-instance v4, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v4
.end method

.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;->c:Lacw;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lacw;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 147
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 148
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacx;

    .line 149
    invoke-virtual {v0}, Lacx;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 152
    goto :goto_0
.end method

.method public final b(Lajv;)V
    .locals 5

    .prologue
    .line 129
    new-instance v0, Lcgg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcgg;-><init>(J)V

    invoke-virtual {v0}, Lcgg;->F_()Lcgg;

    move-result-object v0

    iget-object v1, v0, Lchg;->b:Lcgf;

    invoke-virtual {v1}, Lcgf;->B()Lcgm;

    move-result-object v1

    iget-wide v2, v0, Lchg;->a:J

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v4}, Lcgm;->a(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcgg;->a_(J)Lcgg;

    move-result-object v0

    iget-wide v0, v0, Lchg;->a:J

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->DATE_VIEWED:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->PUBLISHER_NAME:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->DATE_VIEWED:Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;->c:Lacw;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lacw;->a(Ljava/util/List;)I

    .line 138
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;->values()[Lcom/snapchat/android/discover/model/database/table/ChannelViewDatesTable$ChannelViewDatesSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "ChannelViewDatesTable"

    return-object v0
.end method
