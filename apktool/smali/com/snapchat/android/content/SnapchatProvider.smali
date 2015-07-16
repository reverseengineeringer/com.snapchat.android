.class public Lcom/snapchat/android/content/SnapchatProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field private static final e:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    const-string v0, "content://com.snapchat.android.content.SnapchatProvider/HttpMetrics"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/content/SnapchatProvider;->a:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.snapchat.android.content.SnapchatProvider/PublisherAndEdition"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    .line 44
    const-string v0, "content://com.snapchat.android.content.SnapchatProvider/DSnapPage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.snapchat.android.content.SnapchatProvider/VerifiedDeviceTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/content/SnapchatProvider;->d:Landroid/net/Uri;

    .line 49
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 52
    sput-object v0, Lcom/snapchat/android/content/SnapchatProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.snapchat.android.content.SnapchatProvider"

    const-string v2, "Chat"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/snapchat/android/content/SnapchatProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.snapchat.android.content.SnapchatProvider"

    const-string v2, "Chat/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/snapchat/android/content/SnapchatProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.snapchat.android.content.SnapchatProvider"

    const-string v2, "HttpMetrics"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/snapchat/android/content/SnapchatProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.snapchat.android.content.SnapchatProvider"

    const-string v2, "VerifiedDeviceTable"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/snapchat/android/content/SnapchatProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.snapchat.android.content.SnapchatProvider"

    const-string v2, "PublisherAndEdition"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/snapchat/android/content/SnapchatProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.snapchat.android.content.SnapchatProvider"

    const-string v2, "DSnapPage/*"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/snapchat/android/content/SnapchatProvider;->e:Landroid/content/UriMatcher;

    const-string v1, "com.snapchat.android.content.SnapchatProvider"

    const-string v2, "DSnapPage"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 205
    if-nez p0, :cond_1

    move v0, v1

    .line 209
    :goto_0
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 212
    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    if-lez v0, :cond_0

    .line 214
    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    :cond_0
    return-object v2

    .line 205
    :cond_1
    array-length v0, p0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/snapchat/android/content/SnapchatProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snapchat/android/content/SnapchatProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 74
    sget-object v0, Lcom/snapchat/android/content/SnapchatProvider;->e:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "query "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 80
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 84
    packed-switch v1, :pswitch_data_0

    .line 166
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 90
    const-string v2, "=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 91
    new-array v2, v3, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-static {p4, v2}, Lcom/snapchat/android/content/SnapchatProvider;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 96
    :pswitch_2
    const-string v1, "Chat"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/snapchat/android/database/table/ChatTable;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v1, v5

    move-object v4, p4

    .line 170
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v7, p5

    .line 174
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/content/SnapchatProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/snapchat/android/content/SnapchatProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 178
    return-object v0

    .line 103
    :pswitch_3
    const-string v1, "HttpMetrics"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 105
    sget-object v1, Labp;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 107
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snapchat/android/database/schema/HttpMetricSchema;->TIMESTAMP:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move-object v1, v5

    move-object v4, p4

    goto :goto_0

    .line 115
    :pswitch_4
    const-string v1, "VerifiedDeviceTable"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 117
    sget-object v1, Lacf;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 119
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->LAST_LOGIN:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move-object v1, v5

    move-object v4, p4

    goto :goto_0

    .line 127
    :pswitch_5
    const-string v1, "PublisherAndEdition"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 129
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->POSITION:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ASC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, p4

    .line 133
    goto/16 :goto_0

    .line 137
    :pswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 140
    const-string v2, "=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 141
    new-array v2, v3, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-static {p4, v2}, Lcom/snapchat/android/content/SnapchatProvider;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 143
    const-string v1, "DSnapPage"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->POSITION:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ASC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, p4

    .line 149
    goto/16 :goto_0

    .line 153
    :pswitch_7
    const-string v1, "DSnapPage"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->EDITION_ID:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ASC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->POSITION:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ASC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, p4

    .line 162
    goto/16 :goto_0

    :cond_0
    move-object v7, v1

    goto/16 :goto_1

    :cond_1
    move-object v1, v5

    move-object v4, p4

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method
