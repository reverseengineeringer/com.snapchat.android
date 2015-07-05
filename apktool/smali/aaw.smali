.class public final Laaw;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Laaw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laaw;

    invoke-direct {v0}, Laaw;-><init>()V

    sput-object v0, Laaw;->a:Laaw;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "ReceivedSnapImageFileTable"

    sget-object v1, Lawq;->SNAP_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 12
    return-void
.end method

.method public static a()Laaw;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laaw;->a:Laaw;

    return-object v0
.end method
