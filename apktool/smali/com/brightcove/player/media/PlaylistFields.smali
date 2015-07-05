.class public Lcom/brightcove/player/media/PlaylistFields;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_FIELDS:[Ljava/lang/String;

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final REFERENCE_ID:Ljava/lang/String; = "referenceId"

.field public static final SHORT_DESCRIPTION:Ljava/lang/String; = "shortDescription"

.field public static final THUMBNAIL_URL:Ljava/lang/String; = "thumbnailURL"

.field public static final VIDEOS:Ljava/lang/String; = "videos"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "referenceId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "shortDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "thumbnailURL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "videos"

    aput-object v2, v0, v1

    sput-object v0, Lcom/brightcove/player/media/PlaylistFields;->DEFAULT_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
