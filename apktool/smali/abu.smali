.class public final Labu;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Labu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Labu;

    invoke-direct {v0}, Labu;-><init>()V

    sput-object v0, Labu;->a:Labu;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "ProfileImageFile"

    sget-object v1, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 12
    return-void
.end method

.method public static a()Labu;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Labu;->a:Labu;

    return-object v0
.end method
