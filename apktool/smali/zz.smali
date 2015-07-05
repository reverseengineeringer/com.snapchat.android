.class public final Lzz;
.super Lzx;
.source "SourceFile"


# static fields
.field private static final a:Lzz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lzz;

    invoke-direct {v0}, Lzz;-><init>()V

    sput-object v0, Lzz;->a:Lzz;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "CachedGeofilterMetaDataFileTable"

    sget-object v1, Lawq;->GEOFILTER_METADATA_CACHE:Lawp;

    invoke-direct {p0, v0, v1}, Lzx;-><init>(Ljava/lang/String;Lawp;)V

    .line 11
    return-void
.end method

.method public static a()Lzz;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lzz;->a:Lzz;

    return-object v0
.end method
