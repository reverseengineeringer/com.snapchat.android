.class public final Laay;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Laay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Laay;

    invoke-direct {v0}, Laay;-><init>()V

    sput-object v0, Laay;->a:Laay;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "CachedGeofilterMetaDataFileTable"

    sget-object v1, Laxo;->GEOFILTER_METADATA_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 11
    return-void
.end method

.method public static a()Laay;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Laay;->a:Laay;

    return-object v0
.end method
