.class public final enum Lcom/snapchat/android/stories/StoriesThumbnailType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/stories/StoriesThumbnailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/stories/StoriesThumbnailType;

.field public static final enum ALL_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

.field public static final enum OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

.field public static final enum SOME_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

.field public static final enum SPECIFIED_BY_METADATA:Lcom/snapchat/android/stories/StoriesThumbnailType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/snapchat/android/stories/StoriesThumbnailType;

    const-string v1, "ALL_SNAPS"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/stories/StoriesThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->ALL_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 18
    new-instance v0, Lcom/snapchat/android/stories/StoriesThumbnailType;

    const-string v1, "SOME_SNAPS"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/stories/StoriesThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->SOME_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 23
    new-instance v0, Lcom/snapchat/android/stories/StoriesThumbnailType;

    const-string v1, "OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/stories/StoriesThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 28
    new-instance v0, Lcom/snapchat/android/stories/StoriesThumbnailType;

    const-string v1, "SPECIFIED_BY_METADATA"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/stories/StoriesThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->SPECIFIED_BY_METADATA:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/stories/StoriesThumbnailType;

    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->ALL_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->SOME_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->SPECIFIED_BY_METADATA:Lcom/snapchat/android/stories/StoriesThumbnailType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->$VALUES:[Lcom/snapchat/android/stories/StoriesThumbnailType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/stories/StoriesThumbnailType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/stories/StoriesThumbnailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/stories/StoriesThumbnailType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/stories/StoriesThumbnailType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->$VALUES:[Lcom/snapchat/android/stories/StoriesThumbnailType;

    invoke-virtual {v0}, [Lcom/snapchat/android/stories/StoriesThumbnailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/stories/StoriesThumbnailType;

    return-object v0
.end method
