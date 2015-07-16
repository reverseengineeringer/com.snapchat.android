.class public final Laec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Laxn;

.field public static final b:Laxn;

.field public static final c:Laxn;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x9c40

    .line 16
    new-instance v0, Laxn;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_INTRO_VIDEOS:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Laxn;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Laec;->a:Laxn;

    .line 18
    new-instance v0, Layb;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_EDITIONS_CHUNKS:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1}, Layb;-><init>(Lcom/snapchat/android/util/cache/CacheType;)V

    sput-object v0, Laec;->b:Laxn;

    .line 21
    new-instance v0, Laxn;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_PUBLISHER_ICONS:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Laxn;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Laec;->c:Laxn;

    return-void
.end method
