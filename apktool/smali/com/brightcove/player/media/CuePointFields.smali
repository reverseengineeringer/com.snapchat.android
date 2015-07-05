.class public Lcom/brightcove/player/media/CuePointFields;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_FIELDS:[Ljava/lang/String;

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TYPE_ENUM:Ljava/lang/String; = "typeEnum"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "typeEnum"

    aput-object v2, v0, v1

    sput-object v0, Lcom/brightcove/player/media/CuePointFields;->DEFAULT_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
