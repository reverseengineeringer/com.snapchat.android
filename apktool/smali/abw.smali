.class public final Labw;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Labw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Labw;

    invoke-direct {v0}, Labw;-><init>()V

    sput-object v0, Labw;->a:Labw;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "SnapVideoFiles"

    sget-object v1, Laxo;->SNAP_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 13
    return-void
.end method

.method public static a()Labw;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Labw;->a:Labw;

    return-object v0
.end method
