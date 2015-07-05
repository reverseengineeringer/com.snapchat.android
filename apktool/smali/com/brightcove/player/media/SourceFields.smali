.class public final Lcom/brightcove/player/media/SourceFields;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/media/SourceFields$Containers;
    }
.end annotation


# static fields
.field public static final BIT_RATE:Ljava/lang/String; = "encodingRate"

.field public static final DEFAULT_FIELDS:[Ljava/lang/String;

.field public static final DURATION:Ljava/lang/String; = "videoDuration"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final VIDEO_CONTAINER:Ljava/lang/String; = "videoContainer"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "videoDuration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "videoContainer"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "encodingRate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/brightcove/player/media/SourceFields;->DEFAULT_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method
