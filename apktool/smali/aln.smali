.class public final Laln;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISCOVER_BLOB:I = 0x4

.field public static final DISCOVER_SHARE:Ljava/lang/String;

.field public static final FRIEND_REQUEST:I = 0x3

.field public static final FRIEND_REQUEST_IMAGE:I = 0x4

.field public static final FRIEND_REQUEST_VIDEO:I = 0x5

.field public static final FRIEND_REQUEST_VIDEO_NO_AUDIO:I = 0x6

.field public static final IMAGE:I = 0x0

.field public static final VIDEO_AUDIO:I = 0x1

.field public static final VIDEO_NO_AUDIO:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lbjj$a;->DISCOVER_SHARE_V2:Lbjj$a;

    invoke-virtual {v0}, Lbjj$a;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laln;->DISCOVER_SHARE:Ljava/lang/String;

    return-void
.end method
