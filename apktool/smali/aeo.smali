.class public final Laeo;
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
.field private static final a:Laeo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Laeo;

    invoke-direct {v0}, Laeo;-><init>()V

    sput-object v0, Laeo;->a:Laeo;

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

.method public static a()Laeo;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Laeo;->a:Laeo;

    return-object v0
.end method
