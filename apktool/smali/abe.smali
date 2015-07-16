.class public final Labe;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Labe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Labe;

    invoke-direct {v0}, Labe;-><init>()V

    sput-object v0, Labe;->a:Labe;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "DiscoverShareFiles"

    sget-object v1, Laxo;->DISCOVER_SHARE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 12
    return-void
.end method

.method public static a()Labe;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Labe;->a:Labe;

    return-object v0
.end method
