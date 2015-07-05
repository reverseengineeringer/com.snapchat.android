.class public final enum Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/cache/DiscoverShareCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiscoverShareFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

.field public static final enum BLOB:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

.field public static final enum IMAGE:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

.field public static final enum METADATA:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

.field public static final enum VIDEO:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

.field public static final enum VIDEO_OVERLAY:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

.field public static final enum VIDEO_THUMBNAIL:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    const-string v1, "METADATA"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->METADATA:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    .line 25
    new-instance v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->IMAGE:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    .line 26
    new-instance v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    .line 27
    new-instance v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    const-string v1, "VIDEO_THUMBNAIL"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_THUMBNAIL:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    .line 28
    new-instance v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    const-string v1, "VIDEO_OVERLAY"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_OVERLAY:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    .line 29
    new-instance v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    const-string v1, "BLOB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->BLOB:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    sget-object v1, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->METADATA:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->IMAGE:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_THUMBNAIL:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->VIDEO_OVERLAY:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->BLOB:Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->$VALUES:[Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->$VALUES:[Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;

    return-object v0
.end method
