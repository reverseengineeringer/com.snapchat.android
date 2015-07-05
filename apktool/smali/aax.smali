.class public final Laax;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Laax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Laax;

    invoke-direct {v0}, Laax;-><init>()V

    sput-object v0, Laax;->a:Laax;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "SnapVideoFiles"

    sget-object v1, Lawq;->SNAP_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 13
    return-void
.end method

.method public static a()Laax;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Laax;->a:Laax;

    return-object v0
.end method
