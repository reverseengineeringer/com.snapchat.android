.class public final Labv;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Labv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Labv;

    invoke-direct {v0}, Labv;-><init>()V

    sput-object v0, Labv;->a:Labv;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "ReceivedSnapImageFileTable"

    sget-object v1, Laxo;->SNAP_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 12
    return-void
.end method

.method public static a()Labv;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Labv;->a:Labv;

    return-object v0
.end method
