.class public final enum Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/FindFriendRequestCacheTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NumberToTimestampSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

.field public static final enum HASHED_NUMBER:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

.field public static final enum REQUEST_TIMESTAMP:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/snapchat/android/database/DataType;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 186
    new-instance v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    const-string v1, "HASHED_NUMBER"

    const-string v2, "hashedPhoneNumber"

    sget-object v3, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v4, "PRIMARY KEY"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->HASHED_NUMBER:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    .line 188
    new-instance v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    const-string v1, "REQUEST_TIMESTAMP"

    const-string v2, "requestTimestamp"

    sget-object v3, Lcom/snapchat/android/database/DataType;->LONG:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->REQUEST_TIMESTAMP:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->HASHED_NUMBER:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->REQUEST_TIMESTAMP:Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->$VALUES:[Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 197
    iput v0, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->a:I

    .line 198
    iput-object p2, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->b:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 200
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 203
    iput v0, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->a:I

    .line 204
    iput-object p2, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->b:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 206
    iput-object p4, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->d:Ljava/lang/String;

    .line 207
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;
    .locals 1

    .prologue
    .line 185
    const-class v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->$VALUES:[Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/snapchat/android/database/table/FindFriendRequestCacheTable$NumberToTimestampSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
