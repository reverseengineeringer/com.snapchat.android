.class public Lcom/brightcove/player/media/VideoFields;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field public static final CUE_POINTS:Ljava/lang/String; = "cuePoints"

.field public static final CUSTOM_FIELDS:Ljava/lang/String; = "customFields"

.field public static final DEFAULT_FIELDS:[Ljava/lang/String;

.field public static final DURATION:Ljava/lang/String; = "length"

.field public static final HLS_URL:Ljava/lang/String; = "HLSURL"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IOS_RENDITIONS:Ljava/lang/String; = "IOSRenditions"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final REFERENCE_ID:Ljava/lang/String; = "referenceId"

.field public static final RENDITIONS:Ljava/lang/String; = "renditions"

.field public static final SHORT_DESCRIPTION:Ljava/lang/String; = "shortDescription"

.field public static final VIDEO_FULL_LENGTH:Ljava/lang/String; = "videoFullLength"

.field public static final VIDEO_STILL_URL:Ljava/lang/String; = "videoStillURL"

.field public static final WVM_RENDITIONS:Ljava/lang/String; = "WVMRenditions"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accountId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "shortDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "referenceId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "customFields"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "videoFullLength"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HLSURL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "videoStillURL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cuePoints"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "renditions"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "length"

    aput-object v2, v0, v1

    sput-object v0, Lcom/brightcove/player/media/VideoFields;->DEFAULT_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
