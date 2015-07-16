.class public final Lafo;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lafo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lafo;

    invoke-direct {v0}, Lafo;-><init>()V

    sput-object v0, Lafo;->a:Lafo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 21
    return-void
.end method

.method public static a()Lafo;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lafo;->a:Lafo;

    return-object v0
.end method
