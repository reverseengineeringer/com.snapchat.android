.class public final Laxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIN_NUM_FREE_BYTES:J = 0xaL

.field public static sExternalCacheDirectory:Ljava/io/File;

.field public static sInternalCacheDirectory:Ljava/io/File;


# direct methods
.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 21
    sput-object p0, Laxy;->sInternalCacheDirectory:Ljava/io/File;

    .line 22
    sput-object p1, Laxy;->sExternalCacheDirectory:Ljava/io/File;

    .line 23
    return-void
.end method
