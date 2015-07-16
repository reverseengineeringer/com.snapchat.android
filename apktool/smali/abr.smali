.class public final Labr;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Labr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Labr;

    invoke-direct {v0}, Labr;-><init>()V

    sput-object v0, Labr;->a:Labr;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "MySnapImageFileTable"

    sget-object v1, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 12
    return-void
.end method

.method public static a()Labr;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Labr;->a:Labr;

    return-object v0
.end method
