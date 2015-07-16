.class public final Laax;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Laax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Laax;

    invoke-direct {v0}, Laax;-><init>()V

    sput-object v0, Laax;->a:Laax;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "CachedFontFileTable"

    sget-object v1, Laxo;->FONT_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 11
    return-void
.end method

.method public static a()Laax;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Laax;->a:Laax;

    return-object v0
.end method
